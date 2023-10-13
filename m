Return-Path: <devicetree+bounces-8588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 840187C8DBA
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 21:23:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B491E1C210F6
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 19:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71841224CC;
	Fri, 13 Oct 2023 19:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mYqJBt6U"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BB521A0A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 19:23:06 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2F51BE;
	Fri, 13 Oct 2023 12:23:04 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32d9552d765so1665117f8f.2;
        Fri, 13 Oct 2023 12:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697224983; x=1697829783; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dsychVIow/LXp2PohZlsx410ZOet1ssLl3dK2R5eP+M=;
        b=mYqJBt6U6dJkEEX4UOwZU16Ko3iabeVDyFCvcp1qXCx0kco5Ci/Ci62Cn32u5RYrEI
         rSGnpeBXUc2nfMO9XnGnpEqQwuF7EYyq05gbmW8+5f1yZLKacdYOgURd8vArHMd82pRq
         5PUymttVxUNNgr5UccdxwmWEkLTwqo2awUTxFZze4MMYL8blLRVCVkffLDAEtgGy2GMG
         pPotyfGT7EV3319Hdp9WhphbMLWeClGngd0Sm0ExeLG1MnwsjDvGJ/hLqk3oc2B4vBwA
         tm8hig9qucTominoIjXjKYNnaNR9eXZW1ukZxo4WpK6DELdQIFbClUZwbLa8urKqY7OZ
         aZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697224983; x=1697829783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dsychVIow/LXp2PohZlsx410ZOet1ssLl3dK2R5eP+M=;
        b=xIWJYp2kysIJ1+mJdlisuBOMZk6qnHhUqkrb7vVJF5xckYWLQMU6ukuFkCGVlULbZv
         nvwfEaplF6czNYYYs8v3nbEk20QzR7aG9vrniC4Ja2HWPG9CWX5aO5ixbFC5iPcuE006
         thNQsW1NiAfbqpKfvo5UxyM+ogsoJFa+p4+pypLg9NBq8owoSKHqT470+EMSo5PvJYyt
         Dfy3H1wDNOfkFoIckzMA33EsVp0De+hXnXB03IuoUs7yWZIwOisABxGyN7gZxMs9Hqrj
         tL3ZBFcmM+NaPrNN+huJ5sDQ1mU97jjm8Ly5PMZqScU0PcFSqhTJLGa7Rhh+tay6cPeX
         h33A==
X-Gm-Message-State: AOJu0YwgRi98XhYAzjvuNDsRRRSsWG2uxruvM8B1QroHg6Ithe+oVwiR
	/Arq0cl24YQ+qxKpexx0+OI=
X-Google-Smtp-Source: AGHT+IGfN1n0GDWRfCpstC/wYf82yEUkZGvW0rhjc/aMs+cNpzwBigLxmYYgJNoWgMo5BSJ35G1ZCw==
X-Received: by 2002:a05:6000:b02:b0:32d:a10d:90dd with SMTP id dj2-20020a0560000b0200b0032da10d90ddmr1244863wrb.50.1697224983078;
        Fri, 13 Oct 2023 12:23:03 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id i9-20020a5d6309000000b0032da40fd7bdsm44594wru.24.2023.10.13.12.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 12:23:02 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: wens@csie.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, samuel@sholland.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: sun8i-r40: Add interconnect to video-codec
Date: Fri, 13 Oct 2023 21:23:01 +0200
Message-ID: <9177751.CDJkKcVGEf@jernej-laptop>
In-Reply-To:
 <CAGb2v65BnLK2PWh_vnntCtQhCMrAu6segShTFzrfnZMp+VV5+Q@mail.gmail.com>
References:
 <20230911171407.1572030-1-jernej.skrabec@gmail.com>
 <CAGb2v65BnLK2PWh_vnntCtQhCMrAu6segShTFzrfnZMp+VV5+Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dne =C4=8Detrtek, 12. oktober 2023 ob 04:53:04 CEST je Chen-Yu Tsai napisal=
(a):
> On Mon, Sep 11, 2023 at 10:14=E2=80=AFAM Jernej Skrabec
> <jernej.skrabec@gmail.com> wrote:
> >
> > Video codec needs interconnect, so driver knows that it needs to adjust
> > DMA addresses.
> >
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
>=20
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
>=20

Thanks!

Applied.

Jernej




