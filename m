Return-Path: <devicetree+bounces-269340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GE5PNo28oWmswAQAu9opvQ
	(envelope-from <devicetree+bounces-269340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:47:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BCB1BA399
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:47:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F8BE30329B0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D4D43D50C;
	Fri, 27 Feb 2026 15:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FSEqpuWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4341F331A5D
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772207046; cv=none; b=jIq+uXxmBtJRGmvcalnC5UtEyuAhKDHlveEgmvbrRUjDj2IGLTB3fmc4w0gF9/OUH18A3a8OOAGLyrBGARn/UNXIjvekuCjOUssG6KUnKFEsx5Vtb/U94ZXML6PdnYjsd5xt8OoA+TC0XGgIkxvV6wv+E1hbyoGrNUEMJj1iitE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772207046; c=relaxed/simple;
	bh=Y8K1WqT2zQyAQVmCsqmYitEbawYInl77Bk8Qa9Pj31s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Beq04VrpGH0vCQAdmGY4nSRfH/oOy8HuBR5+3kGzuVdJRtJ6Whf1hJW6QXSN1nUuV+9C8kahjkzT4sreWMmEu2/Qpvry1b7uQnMjXDPqto2D1TtZYyMZ35KeGR4wWFVvTjsLK63Q20JCUlOebZP3OqPVxD4SbkQojxabB/tQzt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FSEqpuWc; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ab39b111b9so11254625ad.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772207044; x=1772811844; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0pNuEW5DadTME76c1H2/bOIre54Jrgk8HxKShAN/0Jg=;
        b=FSEqpuWcTC4kdeHGPOxM1c9Rx/XjetDDIMK7O/X5OcB7oxOiR7LdCxMaXtIS5dzJuR
         kJZFt35XXvwRmJqIbypVPsqPHtlAVXfYa6bvT4v3cXHnJTHNWtivXs2gDbQmIIm89oq4
         ghS3DT8qNZOxzVN88bPcs95P4XjoCnh1Cz8TFMaRVzNWYD7YRzHhDu0PFY50mvP29UJH
         MlYMQhIjvO2OVcxPk2ns2uzJxk8eRkPQYXSppyc1KDSXOtHcTSxwdFWNBQ3v+R+PHovm
         BzpTJmEPkpvd+CWSglyvLorb4Wm5VyJMa695nEppPUjZaRiGl02U94eFVMdoVQCB+1N3
         CFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772207044; x=1772811844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0pNuEW5DadTME76c1H2/bOIre54Jrgk8HxKShAN/0Jg=;
        b=AO1u58DwukwDleOPWs3CHkx20ZfgoCz4p6S9mWhEBzCiQkYFbfXEvVkjQwd5ZPw5qB
         X5kIz7Te2BCiN1qLoGWSvEJ8gCqMLaWGNovQZWEYJPXuo0zq2B7bfbceSguxFRha/SrU
         twal20k58cC1+5JgYoUvNSdxx6qhmaGMipNRSE9iIMgA1exxgTEKQbsKhAVkIvv7/rnV
         K2mXRg/AKk1PER1cVoE1DMh/eH6KReTGPhYf2VnEhq2EE1E4tdiQR/lifNnG2Ox+X70s
         vRlz/XsTcu6BSpQ9mlYjeYk9pYGZKOQrbqD9STQ8AY89zb9+f1EgPuk5XVpwquvDWf+U
         UVNA==
X-Forwarded-Encrypted: i=1; AJvYcCVBqDbnD9U2++QuZ90EOAzBT8XefAINA5xA4Gr/zKMDqdBaRgPgs65axaer+psnc1wXLBWOEeO6CmK9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5IgFRsQVdKAPSgt8TBgEPqPDcCDAt+JpmJYoVdjs0Chzz2HlS
	s44Msm16FcUOUOi9Updh9qM9IAQTR7YAZNj8OYGgB/OQouV4Xx6LT4Vo
X-Gm-Gg: ATEYQzzhbu0rqlh8DKmceDRJAc0ub2eWP5mJ0YC+aBLRobpU+dIoD2JfrhfmaPpiR1E
	/wBohfDY0CsCpssQLWc31EqQ1si3j2tBOd0OFdK6U9y+xHRheCRixKFmEQNgXnYhBB2DArqf59j
	Dg7bTcvHmM1fVgVIAstdOlaxBAEMUF3kH/jrd9WipZnKdn8pH3VWPenI8WD6RKg+cFrDjCQhFGI
	ZLvi6hTx+Mo/N443I1d92gT/zEGw88fuNdn4CBcWifueHnDm4okVo+j0IPOzfUvpTFcN0yb+QYk
	kNM1WidEwa7gdsjmy2skq0mOBb2mPkpuSY6W7OP9X0hC+GvN234gK7eixk1VatI/7Y1CDDXyY6x
	WJyMzUwyo4okGsVC38Px1GL02I/vAWGNGOGnHYJL9rEQAQpJ4TZgLk9MSSbHDIjAkV4uTbfqhm2
	soiGG/q5eoE0Ytboh7IBq5KGRIqT9YJbr0AHil
X-Received: by 2002:a17:903:2312:b0:2ad:ca65:a37b with SMTP id d9443c01a7336-2ae2e4d981bmr25603655ad.51.1772207044308;
        Fri, 27 Feb 2026 07:44:04 -0800 (PST)
Received: from arch.localdomain ([117.147.91.218])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6b5813sm60314305ad.63.2026.02.27.07.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:44:04 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	jernej.skrabec@gmail.com,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	mripard@kernel.org,
	robh@kernel.org,
	samuel@sholland.org,
	wens@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
Date: Fri, 27 Feb 2026 23:43:58 +0800
Message-ID: <20260227154358.206060-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227-placid-rare-markhor-cfbdb6@quoll>
References: <20260227-placid-rare-markhor-cfbdb6@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,lists.linux.dev,sholland.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269340-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 35BCB1BA399
X-Rspamd-Action: no action

> On Thu, Feb 26, 2026 at 11:27:02PM +0800, Jun Yan wrote:
> > > On 26/02/2026 09:48, Jun Yan wrote:
> > > > TaiqiCat (TQC) A01 is a set-top box powered by an Allwinner H6 SoC,
> > > > equipped with an AXP305 PMIC, 1GB LPDDR3 RAM, 8GB eMMC, an AP6212
> > > > WiFi/BT combo module, one 100M Ethernet port, one USB 3.0 Type-A port,
> > > > one USB 2.0 Type-A port, one Micro USB port, HDMI, SPDIF, Micro-SD, and
> > > > infrared input.
> > > > 
> > > > It was released by UQsoft as a blockchain-based terminal and is
> > > > now discontinued and no longer supported.
> > > > 
> > > >   https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html
> > > 
> > > This name and footer at that page suggests name "ultrapower" not "uqsoft".
> > UQSoft (Beijing UQSOFT Interactive Technology Co., Ltd.) is a wholly-owned subsidiary of 
> > Ultrapower (Beijing Ultrapower Software Co., Ltd.).
> > 
> > TaiqiCat A01 was released by UQSoft, with its product homepage[1] hosted on Ultrapower's 
> > official website[2].
> > 
> > It should be noted that UQSoft's official website is no longer operational, and the 
> > company is seemingly discontinued.
> > 
> > Therefore, I think it appropriate to revise the relevant information to Ultrapower, 
> > if this is acceptable to you.
> 
> Yes, please use ultrapower in such case. You can mention all this in the
> vendor-prefix patch.
This will be adjusted in the patch V2.

Best regrads,
Jun Yan
> 
> Best regards,
> Krzysztof



