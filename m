Return-Path: <devicetree+bounces-9197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD097CC0E9
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 12:46:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6BBFCB210A8
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B66003AC18;
	Tue, 17 Oct 2023 10:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ObCWlNvx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E668B41748
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:46:15 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9324EEA
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 03:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697539573;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zqkbb/k4y19ZoEz8tHHeyQiTb7Pt5hF4nVZg7dtOzKk=;
	b=ObCWlNvxlR+flvO3Cgi3aCnd4ccsfTXURsvCZ4Z7X1StOckmzS7Yf1fKHKGYuV8LW2nH2/
	PberwRVZmz/jLAR3dV4/Z5s/LMx21DoVhUS1eYQ3ZDPbESqrm7SfeXIK8V+M7+UJDEgeGr
	CuxdCBu8wuIiWO9k1uWkDxOpFkEWL7o=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-166-Wmr1q6RDOpeSNbcp7Pv5bA-1; Tue, 17 Oct 2023 06:46:12 -0400
X-MC-Unique: Wmr1q6RDOpeSNbcp7Pv5bA-1
Received: by mail-lf1-f69.google.com with SMTP id 2adb3069b0e04-50451c54281so1187464e87.0
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 03:46:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697539571; x=1698144371;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zqkbb/k4y19ZoEz8tHHeyQiTb7Pt5hF4nVZg7dtOzKk=;
        b=UGwjnP7t7jU8zXF6du9Ab5BGqMAlCzSX7DbUY0ocNtCjd/r5v7SizMjeH+MPJBHXEs
         RxPYBGXu8PHR9xfUw/PnIHZI/iUS9apgnecADCj9FdlUA8yyMMbL2Wrho9VANMNPCjcx
         BLt4Zhtg3cNA0ACfp2sB81cPZJmweN9eXT8T4/0MmDDIo61BB9POELDEUHCl7mkVhLnk
         WVKmnjKaP0QqXQQvg/ZyXpD83Jy+YKU7ZPhSuHuoDnxT/5qA7KRLMGN3mn7DvtOBNw0q
         mT9q3B/XIVbRA43h6AZgF76Xmb+JgnjO3LuwtPr/Gp2M8gP07oVjS5Xh8jB8rBmXe+8E
         VPWw==
X-Gm-Message-State: AOJu0YyG8f65ceW9pugtv2q4PqgDThh/CLucKJ7s+CkIs6iOitQ13Der
	mFdNQF2mLE4IG//dzXQO4ObUubhtHwMnbjn3vnScRCsGxuAkkx0FL7rC3h10HyS+/AeJdpoSImb
	yPEkd9vU7n9fF8da5C/1vTJsrFKJg7A==
X-Received: by 2002:a05:6512:1188:b0:505:97b9:5d50 with SMTP id g8-20020a056512118800b0050597b95d50mr1595967lfr.5.1697539570784;
        Tue, 17 Oct 2023 03:46:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGM26eZbLoF1xnImDI1P3NpnJ00X/0O1AwfU7XYcu3kmZD6x5Nae+2tZHNg+jy1emwoUXnpJA==
X-Received: by 2002:a05:6512:1188:b0:505:97b9:5d50 with SMTP id g8-20020a056512118800b0050597b95d50mr1595953lfr.5.1697539570431;
        Tue, 17 Oct 2023 03:46:10 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-233-87.dyn.eolo.it. [146.241.233.87])
        by smtp.gmail.com with ESMTPSA id q8-20020a056512210800b00505677e7a99sm226862lfr.139.2023.10.17.03.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 03:46:09 -0700 (PDT)
Message-ID: <caa89a15568b2d92592476995bfcf362475be11f.camel@redhat.com>
Subject: Re: [PATCH net-next v6 3/3] mctp i3c: MCTP I3C driver
From: Paolo Abeni <pabeni@redhat.com>
To: Simon Horman <horms@kernel.org>, Matt Johnston
 <matt@codeconstruct.com.au>
Cc: linux-i3c@lists.infradead.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, Jeremy Kerr
 <jk@codeconstruct.com.au>,  Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  miquel.raynal@bootlin.com
Date: Tue, 17 Oct 2023 12:46:07 +0200
In-Reply-To: <20231017082427.GH1751252@kernel.org>
References: <20231013040628.354323-1-matt@codeconstruct.com.au>
	 <20231013040628.354323-4-matt@codeconstruct.com.au>
	 <20231017082427.GH1751252@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 2023-10-17 at 10:24 +0200, Simon Horman wrote:
> On Fri, Oct 13, 2023 at 12:06:25PM +0800, Matt Johnston wrote:
> > Provides MCTP network transport over an I3C bus, as specified in
> > DMTF DSP0233.
> >=20
> > Each I3C bus (with "mctp-controller" devicetree property) gets an
> > "mctpi3cX" net device created. I3C devices are reachable as remote
> > endpoints through that net device. Link layer addressing uses the
> > I3C PID as a fixed hardware address for neighbour table entries.
> >=20
> > The driver matches I3C devices that have the MIPI assigned DCR 0xCC for
> > MCTP.
> >=20
> > Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
>=20
> Hi Matt,
>=20
> one minor nit below, which you can take, leave, or leave for later
> as far as I am concerned.
>=20
> Overall the patch looks good to me and I see that Paolo's review of v5 ha=
s
> has been addressed.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> > +/* List of mctp_i3c_busdev */
> > +static LIST_HEAD(busdevs);
> > +/* Protects busdevs, as well as mctp_i3c_bus.devs lists */
> > +static DEFINE_MUTEX(busdevs_lock);
> > +
> > +struct mctp_i3c_bus {
> > +	struct net_device *ndev;
> > +
> > +	struct task_struct *tx_thread;
> > +	wait_queue_head_t tx_wq;
> > +	/* tx_lock protects tx_skb and devs */
> > +	spinlock_t tx_lock;
> > +	/* Next skb to transmit */
> > +	struct sk_buff *tx_skb;
> > +	/* Scratch buffer for xmit */
> > +	u8 tx_scratch[MCTP_I3C_MAXBUF];
> > +
> > +	/* Element of busdevs */
> > +	struct list_head list;
>=20
> I am unsure if it is important, but I observe that on x86_64
> list spans a cacheline.

It looks like 'list' is only touched on control path, so it's should
not critical.

Cheers,

Paolo


