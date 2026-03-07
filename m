Return-Path: <devicetree+bounces-272413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFriFncFrGkxjAEAu9opvQ
	(envelope-from <devicetree+bounces-272413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 12:01:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF75422B471
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 12:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87B523045678
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 11:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486E131813A;
	Sat,  7 Mar 2026 11:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SLcECDXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D250C320CD1
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 11:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772881217; cv=none; b=oq5ej82kFMqMUhEhzF2azx7a+KLbeVgal9t81cxEgtLXnB2aL5Qb2aG5HTh/Uro2mfusxcN90Q6D5myQbREsyi+U90btK/d7jJqS2N+/waZLnAxVQats9f6qJEsWqBPvscPj4koNoEEBWKgxkZe2mGHgKasKaocH9/i2ElH2wAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772881217; c=relaxed/simple;
	bh=wmHfghPKb3QT27MuihL3C6x8eV0cPDbifx5TSlVjyU0=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gyiKCr+lK2719+stHF2BU5ppX34mCtdEz0jskyfULBcLJK55H8yWQ2EaeTOe/4bLAJEHPQ0hcyI1DYn+ys+bbloUuFMEkZWdD+Diib+tESM9VmOKhZ4RPu/OK47Kf7gaSyn4RBl745d9617Bu6bCRubL4ChtecVzTfdch3TAeWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SLcECDXZ; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4852ff06541so3294785e9.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 03:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772881214; x=1773486014; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QCI1kb7TlrpTPNFKPwflk45oBxqy/E4b7hXMBF9DXnE=;
        b=SLcECDXZyVnArQFWw6Zt3l12M7yw5aB0lrvRHXWKMyoJGPdRvQW3iHOqBAX2aop+M2
         1qhQ/kUIL6If/psPhDZ4Z1dWqnknYgUzKALhlPA/do4/gP/g8NuhtYvVdtXYArutGCDL
         4ZWCTPBG4rza8JH0Edxa/2sRrMGwIrnA+mMIzg3IUrQni0P9MzlOKHJq2tg8Ybs8p6Uo
         tFJQcL/CR0FNmRgmc4Oiv2mTRGJ+QOB1pTBPQZshALTVtUlU8aeghrNtG84Acdw1nvy+
         3p93nDs2XuIMgls8LhPIsTs4yEcean1Pgzv5GRnXA5OUypt1HkUQcuYecSgduZpvCQra
         5JnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772881214; x=1773486014;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QCI1kb7TlrpTPNFKPwflk45oBxqy/E4b7hXMBF9DXnE=;
        b=Z8Rx5gwa1sH0qib8V6Ocouk15n0SM6w/DbY6WTqVuPQTsmHFmQaMDJzzbSVkDVZtgp
         3Se1rWUiuLWcQYJIXThV2ncYxSjs/J+YoA3KKq8FdyqJ1nwJy6pfVHLOTs8vEh7W0Ik+
         7iZRjiPHUJ379vqHkLL4oQYmguxIAuGPc/JKJrGjNXLg1Xti0WgBQeDIz0J36bQMmopY
         up9nU3Om/LrcgtMSf9Tls25ulwIioD9bOjoPaIQpqsTqhmFJo1hTzqEkFIYnwGjw0Rui
         EF2T9BhIz7GmRxOM8ntiwcNJW19JSsFTU1KtahaFyxQZ/ndN0a/9yh1k/FsBz+O+w6VF
         iftA==
X-Forwarded-Encrypted: i=1; AJvYcCUa3jdLdI03h63SriZuHyZO4IfKWRGwuk9XBwrAbs4WgrqJpw7eGMmqcuAVFxgJcf64BJL65tprVQLx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4BZDGVz23b4U9is9kMznosEua0nLvCgUk90UVyvZgL5pHDKY2
	Gs8K5c+j4bqVFBet1XWo4MfY5QBGBXa85Z35yWeglyZx7oUq+JaGx9xu
X-Gm-Gg: ATEYQzwuuQIbIn91B1mpJ5E7PwYJFdI5MKN7RIBeBaW2/siqKKySImLuebv+30GeVGL
	2sClL4quYuCuuz/oU3z4mOpDOPWSECdaXY/B3chz/AdsnQuiJO6mNICjjU5GR59nJ5HbQwaJrO4
	WMw5ClpFweVU4tjswd1zNryqJKzwznlUeJdro7EKe/XePlFURXDb0GpCeB9a9bcvbOBdyvAWk3a
	TS0esyAtzqgjRpA5SOM6DyqbnpSXtK/FRdEEN46WFHkk9Sr7F3Po17xXkFQjzV7T33Wz9Zd1rpe
	7zZyo+lfRf9HjFRgAav9ADDqiVmsXtcEijtkBeQcNP4BbAJFzNGeR4OmtCPB88+5vXOykGvnvRp
	SEH/47D0PRrnAAK/lleWLKhtPeF+XcXqgoOcWiSjTDtFOYUnU0DXX4ZIb9Vspr05TljBy3gs5kH
	/3q2Jh1+TtermjwKRlwI71+HAWjpS0ymQ6unPW2+e1shUF42T1PPWwchqrUFyO76Wt
X-Received: by 2002:a05:600c:45c6:b0:483:c35d:3662 with SMTP id 5b1f17b1804b1-48526957c37mr81366225e9.18.1772881213827;
        Sat, 07 Mar 2026 03:00:13 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4852e38c013sm84256225e9.8.2026.03.07.03.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 03:00:13 -0800 (PST)
Message-ID: <69ac053d.050a0220.24143c.6b14@mx.google.com>
X-Google-Original-Message-ID: <aawFO9rx_7g3C7eg@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 12:00:11 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/4] airoha: an7581: USB support
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260307-poetic-salmon-of-order-33a4d0@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307-poetic-salmon-of-order-33a4d0@quoll>
X-Rspamd-Queue-Id: BF75422B471
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272413-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.866];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mx.google.com:mid]
X-Rspamd-Action: no action

On Sat, Mar 07, 2026 at 11:28:29AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 08:01:49PM +0100, Christian Marangi wrote:
> > This is a major rework of the old v2 series.
> > 
> > The SoC always support USB 2.0 but for USB 3.0 it needs additional
> > configuration for the Serdes port. Such port can be either configured
> > for USB usage or for PCIe lines or HSGMII and these are configured
> > in the SCU space.
> > 
> > The previous implementation of a dedicated SSR driver was too
> > complex and fragile for the simple task of configuring a register
> > hence it was dropped and the handling is entirely in the PHY driver.
> > 
> > Everything was reducted to the dt-bindings to describe the Serdes line.
> > 
> > Also the property for the PHY are renamed to a more suitable name and
> > everything is now mandatory to simplify the implementation.
> > (the PHY are always present and active on the SoC)
> > 
> > Also other unrelated patch are dropped from this series.
> > 
> > Changes v6:
> > - Fix kernel test robot (sparse warning)
> > 
> > Changes v5:
> > - Add Ack and Review tag from Connor
> > - Implement Ethernet support in the USB driver
> >   (testing support for this Serdes on a special reference board)
> > - Use an7581 prefix for USB PHY driver
> >   Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/
> > 
> > Changes v4:
> > - Rename PCIe and USB PHY to AN7581
> > - Drop airoha,scu (handled directly in driver)
> > - Drop dt-bindings for monitor clock in favor of raw values
> > - Better describe the usage of airoha,usb3-serdes
> > - Simplify values of dt-bindings SSR SERDES
> >   Link: https://lore.kernel.org/all/20251107160251.2307088-1-ansuelsmth@gmail.com/
> 
> Why is this the same link as v5?
>

Sorry a copy paste error. Here [0]

[0] https://lore.kernel.org/all/20260304005843.2680-1-ansuelsmth@gmail.com/
 
> > 
> > Changes v3:
> > - Drop clk changes
> > - Drop SSR driver
> > - Rename property in Documentation
> > - Simplify PHY handling
> > - Move SSR handling inside the PHY driver
> >   Link: https://lore.kernel.org/all/20251029173713.7670-1-ansuelsmth@gmail.com/
> 
> Best regards,
> Krzysztof
> 

-- 
	Ansuel

