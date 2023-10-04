Return-Path: <devicetree+bounces-5838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6880B7B8161
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:52:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1B093281582
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1C615E91;
	Wed,  4 Oct 2023 13:52:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C9F15494
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:52:25 +0000 (UTC)
Received: from hutie.ust.cz (hutie.ust.cz [IPv6:2a03:3b40:fe:f0::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D706AD;
	Wed,  4 Oct 2023 06:52:22 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cutebit.org; s=mail;
	t=1696427540; bh=KcjfRyeZMHPf1SqYXPE394CsKwR0EDN9c34JKtA7meo=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To;
	b=b0bRMs56ZQdQhG8778vaNx6rLXBxkPB1rTVglaTKYCjHHrzRAtw4c/onwv9LZ4Mmv
	 W6ZhdRJGOX5jbxUPqicRdFcwzHzZp4Wj/prtvmCw8nLpJko2JhWh/jYPfVADSmPgO6
	 jdM6Yf6kiLVU6gD4+dSAoCgYhmz1aJ3k//0+q7Ys=
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Subject: Re: [PATCH v2 2/2] dmaengine: apple-sio: Add Apple SIO driver
From: =?utf-8?Q?Martin_Povi=C5=A1er?= <povik+lin@cutebit.org>
In-Reply-To: <ZR1smXBXyx7xDEmg@matsya>
Date: Wed, 4 Oct 2023 15:52:09 +0200
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 asahi@lists.linux.dev,
 dmaengine@vger.kernel.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <C054722F-B1E0-4F4E-A45D-5F603738249C@cutebit.org>
References: <20230828170013.75820-1-povik+lin@cutebit.org>
 <20230828170013.75820-3-povik+lin@cutebit.org> <ZR1kz7Sil8onc1uC@matsya>
 <06444557-414A-4710-88A0-620975BB258A@cutebit.org> <ZR1smXBXyx7xDEmg@matsya>
To: Vinod Koul <vkoul@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


> On 4. 10. 2023, at 15:46, Vinod Koul <vkoul@kernel.org> wrote:
>=20
> On 04-10-23, 15:32, Martin Povi=C5=A1er wrote:
>=20
>>>> + * There are two kinds of 'transaction descriptors' in play here.
>>>> + *
>>>> + * There's the struct sio_tx, and the struct =
dma_async_tx_descriptor embedded
>>>> + * inside, which jointly represent a transaction to the dmaengine =
subsystem.
>>>> + * At this time we only support those transactions to be cyclic.
>>>> + *
>>>> + * Then there are the coprocessor descriptors, which is what the =
coprocessor
>>>> + * knows and understands. These don't seem to have a cyclic =
regime, so we can't
>>>> + * map the dmaengine transaction on an exact coprocessor =
counterpart. Instead
>>>> + * we continually queue up many coprocessor descriptors to =
implement a cyclic
>>>> + * transaction.
>>>> + *
>>>> + * The number below is the maximum of how far ahead (how many) =
coprocessor
>>>> + * descriptors we should be queuing up, per channel, for a cyclic =
transaction.
>>>> + * Basically it's a made-up number.
>>>> + */
>>>> +#define SIO_MAX_NINFLIGHT 4
>>>=20
>>> you meant SIO_MAX_INFLIGHT if not what is NINFLIGHT?
>>=20
>> I mean the number is arbitrary, it doesn=E2=80=99t reflect any =
coprocessor limit since
>> I haven=E2=80=99t run the tests to figure one out. It's supposed to =
be a small reasonable
>> number.
>=20
> Sorry that was not my question. Should this macro be SIO_MAX_NINFLIGHT
> or SIO_MAX_INFLIGHT..?

Yeah, I realized after I sent the reply, sorry. I don=E2=80=99t know =
what you would
interpret to be the difference between NINFLIGHT and INFLIGHT, in my =
book
both would be the "number of inflight=E2=80=9D in the context here.

>>>> +static int sio_device_config(struct dma_chan *chan,
>>>> +      struct dma_slave_config *config)
>>>> +{
>>>> + struct sio_chan *siochan =3D to_sio_chan(chan);
>>>> + struct sio_data *sio =3D siochan->host;
>>>> + bool is_tx =3D sio_chan_direction(siochan->no) =3D=3D =
DMA_MEM_TO_DEV;
>>>> + struct sio_shmem_chan_config *cfg =3D sio->shmem;
>>>> + int ret;
>>>> +
>>>> + switch (is_tx ? config->dst_addr_width : config->src_addr_width) =
{
>>>> + case DMA_SLAVE_BUSWIDTH_1_BYTE:
>>>> + cfg->datashape =3D 0;
>>>> + break;
>>>> + case DMA_SLAVE_BUSWIDTH_2_BYTES:
>>>> + cfg->datashape =3D 1;
>>>> + break;
>>>> + case DMA_SLAVE_BUSWIDTH_4_BYTES:
>>>> + cfg->datashape =3D 2;
>>>> + break;
>>>> + default:
>>>> + return -EINVAL;
>>>> + }
>>>> +
>>>> + cfg->fifo =3D 0x800;
>>>> + cfg->limit =3D 0x800;
>>>> + cfg->threshold =3D 0x800;
>>>> + dma_wmb();
>>>=20
>>> ??
>>=20
>> Again, shared memory
>>=20
>>>> +
>>>> + ret =3D sio_call(sio, FIELD_PREP(SIOMSG_TYPE, MSG_CONFIGURE) |
>>>> +     FIELD_PREP(SIOMSG_EP, siochan->no));
>>>=20
>>> this does not sound okay, can you explain why this call is here
>>=20
>> We are sending the configuration to the coprocessor, it will NACK
>> it if invalid, seems very fitting here.
>=20
> I dont this so, purpose of the device_config() is to send peripheral
> config to driver for use on the next descriptor which is submitted. So
> sending to co-processor now (when we might even have a txn going on)
> does not seem right
>=20
> What would be the behaviour if already a txn is progressing on the
> co-processor

I have no idea.

OK, though is that necessarily part of the dmaengine interface? I ask
because the other driver I have written (apple-admac.c) does basically
the same, only it applies the new configuration in MMIO registers rather
than sending it to a coprocessor, but the end result is the same:
the configuration gets checked for validity, and applied right away.

Martin

> --=20
> ~Vinod
>=20


