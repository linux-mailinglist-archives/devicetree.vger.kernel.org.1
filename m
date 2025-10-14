Return-Path: <devicetree+bounces-226656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 723EDBDA57F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:26:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 979FC50295F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405FE2C0292;
	Tue, 14 Oct 2025 15:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UwFrN2YG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A645C2BF009
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760455126; cv=none; b=iJKn91kG6fcuraPKs91ge/WmcipZ9KKmqLvL7/VGQsJiv1Zu9HbcslCXtw1PFH+9ixbQk/ntBaXqRikBhx5rSoEVLQlaL2wZdMkzG97I5DhJWUhhCVzxCviT4iyeTH1kW6zRuzIUc1bsQMPTOZr2AeR/8VIkoADu5oFL9QhEUvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760455126; c=relaxed/simple;
	bh=JC60HEInNluqzF3bnchV7EOp617mC62c6zir/e0gnlw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JPmoe2q12vaXS7o6wpQrb3ULAMsOKLuVmMA4KI34ukfu7SfYryemOfUSIi1KP2SipgUGg/1DjKEWIi6bUpucVT4Ll9YM5AVJyl5QUbyLZRNY1mL4TH3k7rPZoEBR9l5kS8Un/ovG/OUhgQijzUuwRppB80lL/uDZWVTn/dhvlTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UwFrN2YG; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b555ab7fabaso5021056a12.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760455124; x=1761059924; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9RG2muNaSakDWxI94gPRyAVmL2U1gaeN0a3vQP8Zu5U=;
        b=UwFrN2YGIv3vI5HCIqsNtILexdt139q6LdscQO/XGkyIPzkkZMwu2pie4wRdr9FvQC
         2OwsmvlgG0/wLVlq4PEdF7/jVE3llgJc56KR9H7D1VyCytivjE9hM4gbSb74YnbH/h2H
         OUQ6ENszTnII05N6TeEmS+f3N7SQpBkjRIY22r4cjc5rmnUbMZuVG6AGNGn7pX8mMNwE
         yCMEGRRaIcMpGTwxWVhS8d/thUB1nPjpotGuiZgnr8tXRRq6MuwA7dDl858exBOjM5MC
         r/zzZjEhhIOTlP2l8LdlAcmwg8YQizEsC8MQtvttoB1uKNol6qsMSvXHdNPjzu9mT0g6
         2TLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760455124; x=1761059924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9RG2muNaSakDWxI94gPRyAVmL2U1gaeN0a3vQP8Zu5U=;
        b=M0dKK5BJVRUbXAk1QVvTDGZl4r2KJTMr+IyiGDkDU5FYHBW5v1f0OJq2ivXFwJcUNg
         MHOVY1cQ7EpAFe/K6gffxkagnoPNT4dRuJ+1173TPtSqI6xtYC6ZIHkWXnnEUekdJItR
         hI0BU7Ru3XWhYxA2X7Z9RoPeT8jR9g82EwNqySm0HAC3Rv1o6XEi8xZKmCBQfMkOGfaA
         paej+2n0yNDLg2ACvQBAHRs30GUtAM2ECS5TGwGa2S+mLtSF7pSlKj1yF7LRQ803vSd4
         ZweDC/zDJwv4bbHigafdfx1Iu0/MUM4Pvu/gyNvdvIA33eu2hOgBTUllQTCD+NM+efge
         yt7Q==
X-Forwarded-Encrypted: i=1; AJvYcCW76R2/ZHZ3LUFsid5QHW5FHdMD6F+CYLn2zIdUkr48CBiCjTyUgRibEaDbxNXmYS2lRBvNqPmlzVmz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6weVUHM1bfz2uBBJmaZKjKQ3NjeyLOJzRMTU38kpEqyXVW7nm
	GlslP7Xj4/FXLa/SqEzT7voye2CHX2zuq4EAKYzVGsUf+PafJYjJWY6p
X-Gm-Gg: ASbGncu6dmrArgr5GdEAhuV5rVdvx/CpqOSIAZPcHrzGDLjFepOR5pDJLY8OEYRDnQA
	n7uRpiyti3H1Da9eL/61TAl3VorA+LdADqFllI6QXGqNDR3Je0Vc5T7yy5gHCc14puKMC1FhdJs
	EVi9HAQQYRSImBuLdr/+5/EmZueif93Gk2dL/BxpGFgEKA5TfBZ9e/ApleqgQMHpglxlAV700cY
	+wrdSnL+CQuPZwsxZAhitKJxDeUQhY8t1f/gyxRKC3Y6T21ZCvbB3p84EsVALYCI+CeTqZePZnv
	UVptvTSZEO+QG82mJARxq2By2xBjaqh0jHYwrr2zIKBkbV+hubciWvozNz07BxL7mCuwgQdetx9
	RlsoRe3fIapbls38PAwmsVjQQJXaTegngdLKW7SQcPhtmhhCtjycGVogZv5HgRVme
X-Google-Smtp-Source: AGHT+IHIsEd1SylS40HYfaucznmGO/M9RGsNWRga99P+rm4jbrckX5mvU1P7jlaSDBhOyjB7a0ocng==
X-Received: by 2002:a17:903:2ac3:b0:281:613:844b with SMTP id d9443c01a7336-29027418ecdmr315810205ad.52.1760455123527;
        Tue, 14 Oct 2025 08:18:43 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e1cc53sm167544325ad.46.2025.10.14.08.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:18:43 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 14 Oct 2025 08:18:41 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Cosmo Chou <chou.cosmo@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org, cosmo.chou@quantatw.com
Subject: Re: [PATCH v2 2/2] hwmon: (pmbus) add driver for MPS MP9945
Message-ID: <7df1419e-18a1-4656-aba0-2f82914bcfc8@roeck-us.net>
References: <20251009205458.396368-1-chou.cosmo@gmail.com>
 <20251009205458.396368-2-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009205458.396368-2-chou.cosmo@gmail.com>

On Fri, Oct 10, 2025 at 04:54:58AM +0800, Cosmo Chou wrote:
> Add support for mp9945 device from Monolithic Power Systems, Inc.
> (MPS) vendor. This is a single phase digital step down converter.
> 
> Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>

Applied.

Thanks,
Guenter

