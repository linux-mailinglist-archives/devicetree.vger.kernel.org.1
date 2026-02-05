Return-Path: <devicetree+bounces-263030-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gF+iLYadhGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263030-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:39:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BA1F362D
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:39:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 68B263006829
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEBB6238D22;
	Thu,  5 Feb 2026 13:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ELk1TBwg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA9122A4D6
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 13:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298751; cv=pass; b=h0lAiIPt2XAuCSTHSwW/RS7NVDj3NLw0BJD9y0fXzLWwFKLOnLbYCEiHG1ervXPW5xeH49umBXEQ3XnlyxL1R+xozwwcx4zXsqAXryxitW8LEtLzfUaRuWnAt5VEFMe1RunQO8pXRNjOG9b25oWHtCd1hX7d8TD99wyZt/eVvs8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298751; c=relaxed/simple;
	bh=jYA1Duj+cRq+IJF4FOr3z/OpYboiXpeOFw6+rn+iPOc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gNmuDggs/taCRTfb5jEYUzVZR9JzApjhhMNblocjvcdIKsPlnxRe4NPFddmvHZejuTyWdIb5t+nN0SVyTc3V/bOJI9J9B2DnMMzMoXKshwNuZ6Fo+jD+Q0FBLoiEVY7kOEva4D58ZrQPFfxR0Fjtr5FP9kMFFWjSrwbupVgmAB4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ELk1TBwg; arc=pass smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-1249b9f5703so1512238c88.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 05:39:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770298751; cv=none;
        d=google.com; s=arc-20240605;
        b=agq02gHfXvLl6LJnPUAdMqA+iuK7L7pyThTFwuLBYAFvFUwkrkUCwN05iqE2nQqN4b
         zz5M5mke4b5oBQ8q0KdCu4D4yAFDy8NL79Sk+Oby6ndBEN7fMbMLzoPWdhQoqCg/xsml
         5OdN657CTJlX+FFMEwKTX+w0v1tanjZaT499Aw2EEQXhWG0WDB0cva3mB0kxECXlkePk
         XyEgmWnzkazepbBB6XZMzYUUrFI9uE+/uw/tMVwCJLz4nKl1/s/85K7kmSkSgA2ASRBJ
         +lHCw+egKcEf23R4iATBJCHIjXKXJ8DpaWCSwc3vFXAtRyG9w72hbKyKkhFMDCsiNZ0v
         iA/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jYA1Duj+cRq+IJF4FOr3z/OpYboiXpeOFw6+rn+iPOc=;
        fh=yoDr7ceiPD06YnhvrJ47McEGcwnRFp53Zua8Toy0TSQ=;
        b=Pj3kYsKW1cVMnHVmeGd9ioYc17qdPHv7M65cOMbC2V0TNFBG2KgKllg1ZkGY2wk6W9
         apHK25lYhyMN8wxersSuv2NzMVRosH67f4qYHrVK1lGsplyW3Ex0XQqpvXXmrFX8Yol9
         SuwhtCTR7WGkmH1l8RPJkYTE4bgXMNXO5G31lcr4fQoMzoX0+9KCdkwXZhBEroTgWHsD
         px+8myIFNUQep0W5M+yzXGjEMWR1U2MFYHgIKOE87mLLoGUFnFXHsMRCCQs89KApx7MZ
         8o8FjsDhmtkRg+fU8JnDxm5gX/u/l418IyV+2/5sy9Tgb4UbIHf0W5JGE99ogXzrMCdg
         L9MA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770298751; x=1770903551; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jYA1Duj+cRq+IJF4FOr3z/OpYboiXpeOFw6+rn+iPOc=;
        b=ELk1TBwg6Mdb3slRmjS7sCtjdGnXgRV5BUKSvTkGTsXzmZJ3SSPw92HcLNQAzs9bOi
         qdwDL4Z5LicrTpgKhdEX8PGdOzPfJlWg7QsiKrHadN9ZXwkg6veiR8RWsS026s5F5fKu
         sV5Qqs2A/BnoOj1oall0/1voTqhi0t6dEdllc6mLcAuPuiNlZwLB+EvUTldhZmJOo385
         wDkQFUfFuRsVptMIQlb9Cc+hFakQExZ0V6KoROUqtK6UwSVvMEN/Fh9M7+/CWPEHrF90
         QrbiOGEfZ4HPIyZPJJlJ1xuu2PvfM0v4QmyeAVf1PDslL7mBmNhoQjwkVP8PWzY1lXbn
         nfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770298751; x=1770903551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jYA1Duj+cRq+IJF4FOr3z/OpYboiXpeOFw6+rn+iPOc=;
        b=pSMSLlG1jE7/neuyoEq8rjrxk4frIZMbkeTsi7Gbw+yzivELg3Sc7frxTdJNNJmd+O
         UozZgRKJLHvATYJ17bmjVVpXXrDUoSji32rJGUoCMcifSuByzAfi35Uh1fWj1YyCo7ri
         xDENZZGaQr9mPUwl+cLr8JuD7HgpOmx87MLhsxUbA9PcZKanCUhG5QebIaDTgubFXAzG
         au1JJ+yu8leZ5mnqcC+KyayTQsjjQLoya1fqEMGUBAdObuONCeZwJuc8wksxFhEPw9gP
         x+EfqSRrGVxvxK6BTg2lKHQRADR07/ondW9JBtGhP6FxdOSYMesimjbmzPhtx5AtecBq
         0TDg==
X-Forwarded-Encrypted: i=1; AJvYcCUmx+Xhdt4Yto/t9mJVfB4eL5tLOu3grNQRps91aKohpeTHpkCu+qsgYAZev/fZSJ9njF/9hTbEel3u@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd0H6b3DZuYiCAH2iG3zl3Q11rPxAVE8tbQ2I0L4EGeQoPWQgN
	nsgmC3bEwlTEpbu9uXvxk/keE4iX4hPMNJjo4oEWlCm8shvA0EKTB6ZQLYTEml9RA/PfZDfRwrx
	6ao++vI0hi64hhDYm9MJGvMdpO4sSOjM=
X-Gm-Gg: AZuq6aIiZ6/uAeygG2IuFCb6jPm18EQedE5OYCyuReGxrz6ASNT4cSYSV8ulgVUwEQR
	KTYi5Lrv0gsElVJaWUeTw0SQS4sNVmWfIxL7nZXidVKXVA0RhuLT1xufpD1uNq6mJ+xlwudGm5L
	xa0fvM0tj9zUOUrONDD2s2MwQKumaCgRUZnwSCMD7RlHmXDevhbVtCnuwtXfUVtKqgSmoXKJVoV
	iFIQV4p1e8JRwrJ4ACVanzftarew0HRlMr66u+K+UGXFSdow5zgtORFYODQ75+mrBl9c0TCiDe6
	/LgeceGoq7KFY/dwuqOo+rVvn/jGkhqBZq6aqz+HJBBQGIqlzOFnoQrNj/zhLp7m+kmRvoH1I1w
	ahu0JDpM9Ng==
X-Received: by 2002:a05:7022:a94:b0:123:3364:2cad with SMTP id
 a92af1059eb24-126f47df434mr2985042c88.40.1770298750680; Thu, 05 Feb 2026
 05:39:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123-imx91s-frdm-v4-0-1bab038faee9@nxp.com>
In-Reply-To: <20260123-imx91s-frdm-v4-0-1bab038faee9@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 5 Feb 2026 15:41:57 +0200
X-Gm-Features: AZwV_QjtTDQuyjSNcHW5ldGYp4M24kdWeqjPp9n9pJY2oppr5gGyiiOIFo49TGU
Message-ID: <CAEnQRZBBM6y9Ux8ytbYEY-hQ_D8t+aW1+8OczUpX4=p1gmxVQA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Add NXP FRDM-IMX91S board support
To: Yanan Yang <yanan.yang@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, qijian.guo@nxp.com, 
	justin.jiang@nxp.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Daniel Baluta <daniel.baluta@nxp.com>, Lei Xu <lei.xu@nxp.com>, 
	Xiaofeng Wei <xiaofeng.wei@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263030-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:url,nxp.com:email]
X-Rspamd-Queue-Id: D3BA1F362D
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 8:43=E2=80=AFAM Yanan Yang <yanan.yang@nxp.com> wro=
te:
>
> This patch set introduces DeviceTree support for the NXP FRDM-IMX91S
> development board based on the i.MX91 SoC. FRDM-IMX91S is a cost-optimize=
d
> variant of FRDM-IMX91 and differs in several hardware aspects:
>
> - 512MB LPDDR4 (FRDM-IMX91 uses 1GB)
> - 256MB FlexSPI-NAND (FRDM-IMX91 uses 8GB eMMC)
> - Single GbE port (FRDM-IMX91 has dual GbE)
> - PMIC PF9453 (FRDM-IMX91 uses PCA9451A)
>
> This patch has been tested on FRDM-IMX91S board and verified for basic
> functionality.
>
> For more details about the FRDM-IMX91S board, see:
> https://www.nxp.com/design/design-center/development-boards-and-designs/F=
RDM-IMX91S


Hi Yanan,

Just got my imx91S frdm board and tried to test this but the patches
failed to apply on linux-next.

Can you please try rebase and resend?

Thanks,
Daniel.

