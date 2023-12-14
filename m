Return-Path: <devicetree+bounces-25426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BBF8133C2
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:00:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6503828301F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE34E5B5B1;
	Thu, 14 Dec 2023 15:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ht1YdQaV"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CB9712A
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702566021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YWD8flG08948c+kk5diZhSkaE4l4o5OrXgP93+sWFH8=;
	b=Ht1YdQaVbXHF99NaROTAKw+pyFxElWBPcLYpngdUbPwckJOxmYwlAu7U8w50QAjGLotW3+
	8J1zaoLpgHb7Ay7LzAGismGdfsKJxijQUrFWUYCj7wq0JkiwmMSP8uCkO1zK4GnJICNHHn
	YjaxMZTmjjguNZ6SLUPvsfJHq8vKG5s=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-378-HOBEBhmQMi-KAGCZyGNsrA-1; Thu, 14 Dec 2023 10:00:19 -0500
X-MC-Unique: HOBEBhmQMi-KAGCZyGNsrA-1
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-551dda474aeso124462a12.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:00:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702566018; x=1703170818;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YWD8flG08948c+kk5diZhSkaE4l4o5OrXgP93+sWFH8=;
        b=cJvDXLnGvDZ1AvA/8pSA5xModEqogE2XEVa4HckUQwtPZjZWOzQCl7tWNYW2MFnerx
         KlmZNA0snOwURFJ3htmgDMpgxiJhge6qtBf7UyUfdInGY5Zeo0OdO+70v7aR8iymz8ow
         RC4zt1bV0SesnYcvos8kCWJ13ic1GLuZyZ/3xenhGU7d+cCIfAv0Hdc42qOC/lgSoRUT
         hg+3s7At8fOtuTU2oHDrrEepCCDo5e8Aw/+oAWSgV52FLpx5JEBcjWKSLrCZpi73Uwu8
         2Vc+cAm5fxmAvYL6WTYS76pIX1V48XRP2ZkdRvamsGzMRQtzpxE7Egtb9Cu0sGvJxOgW
         Jjtg==
X-Gm-Message-State: AOJu0Yw1HZ2Px76aaOvuiUWlWvI7rdW8jToRrKtJQdDrqu0sseTIQaMk
	s8qSUDuiz3ccJDwnGyvUVb7MGvnZORcSr8n8J9TK3fkufsSt07cRpLyy8OFNcaAhLRWU+kuI3ds
	cWygcsLEZpCGch/TXbtC0sA==
X-Received: by 2002:a50:c349:0:b0:552:8299:65fc with SMTP id q9-20020a50c349000000b00552829965fcmr853872edb.4.1702566018699;
        Thu, 14 Dec 2023 07:00:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEObJZISOhVTutkg5qzmkvSZBjnemH0WpgDmhPCj1LJegEvnc1zWHUUA1QXUujGyd6isycDyg==
X-Received: by 2002:a50:c349:0:b0:552:8299:65fc with SMTP id q9-20020a50c349000000b00552829965fcmr853840edb.4.1702566018356;
        Thu, 14 Dec 2023 07:00:18 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-252-36.dyn.eolo.it. [146.241.252.36])
        by smtp.gmail.com with ESMTPSA id cn10-20020a0564020caa00b0054ca2619c1bsm6867552edb.9.2023.12.14.07.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 07:00:17 -0800 (PST)
Message-ID: <fa171d50e1a20019b4b2bf302043278909b9072f.camel@redhat.com>
Subject: Re: [PATCH net-next v6 3/3] net: stmmac: Add driver support for
 DWMAC5 common safety IRQ
From: Paolo Abeni <pabeni@redhat.com>
To: Suraj Jaiswal <quic_jsuraj@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,  Konrad Dybcio
 <konrad.dybcio@linaro.org>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu
 <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, Prasad Sodagudi
 <psodagud@quicinc.com>,  Andrew Halaney <ahalaney@redhat.com>, Rob Herring
 <robh@kernel.org>
Cc: kernel@quicinc.com
Date: Thu, 14 Dec 2023 16:00:15 +0100
In-Reply-To: <20231212115841.3800241-4-quic_jsuraj@quicinc.com>
References: <20231212115841.3800241-1-quic_jsuraj@quicinc.com>
	 <20231212115841.3800241-4-quic_jsuraj@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2023-12-12 at 17:28 +0530, Suraj Jaiswal wrote:
> @@ -3759,6 +3763,7 @@ static int stmmac_request_irq_single(struct net_dev=
ice *dev)
>  	struct stmmac_priv *priv =3D netdev_priv(dev);
>  	enum request_irq_err irq_err;
>  	int ret;
> +	char *int_name;

I'm sorry to nit-pick, but please respect the reverse x-mas tree above,

Otherwise LGTM!

Cheers,

Paolo



