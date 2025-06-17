Return-Path: <devicetree+bounces-186620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC56ADC990
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:38:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08FFC3B46FA
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28C2C2DF3D5;
	Tue, 17 Jun 2025 11:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="dqWinhLw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519A12DBF7D
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750160312; cv=none; b=HQUxpAiM/a9sd1gdiZN3csPcH5hE1BR1FQLri35o84QKwnCOYRnGFQsSNuLMIZ7KDncU5IrrK9ilf9NJ1fiRIaK1soATw/iYlxQmsmEgbqa5bETqDs6QIuhpYUh/OR9WCJVwyoJ8Y+7EqRtpL093PJN4Ha/qdwiUIj3wKue/Uvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750160312; c=relaxed/simple;
	bh=P4AbCE9HwyQ2ZcfXU7Rbe5yrBL7FeZqCxZ4VA6G9DXo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=t0gXEnCGifwic0dSRhKUt7+WdD7DJyH2DSCqRDAQm9zeAupZ9lxPK2jMjLQuX6dmqiBHld/cysfxEXJI9x4hAYeidUTPFjIfZwzmlAGtOIchpt4Xpr1jI/UMOR2zqy+AtjfqQBe1uHIxI0qX+coTSWO1Um2+cqQt2RkDEk1bLco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=dqWinhLw; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-747c2cc3419so4319891b3a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 04:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1750160308; x=1750765108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iXTA6O2icv0/6SSOuEbzQHDT98BuIAlkIFUd19y22YY=;
        b=dqWinhLwbKlmmE8JIM/AN+Y+NAg+CRJbjV3IemjHoyPOfTIRgQQTBVKRTivPm6F5v6
         lPlpxOWyqLlJVhhzbvs4jrsqUG4XCbTVioSm3qXJnjM0iTqVwdcdR+P/8kTb5BsUT3bW
         zoXPz2MeungZEx0m3/arNQSBlQdhF84/T9FOqw6jDcodmZ4MrXMtHHVCKNa6RF4GKYzw
         dx8K7e6fGZeqim12lg4BDvprvk9USCzcOcvvWzBG3EBGL/9BRS06DVEWs3ms4o4+yiVr
         2VMKqtXELwDJk9RDJSqve5bgSL3ywZc8oSVUXmmPnb/XPs5IVF0mMhRFQ4adJHrhiChX
         RJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750160308; x=1750765108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iXTA6O2icv0/6SSOuEbzQHDT98BuIAlkIFUd19y22YY=;
        b=Gb0fsVVebQrUim+Vznsl9X8l4EuQ9f6wklyhJyGhtVRA+Uz8v4kGTmen7vmUURk+o4
         JG+4uo+Dp1YHpJ2I+LW02WE61XsfL8YoIsg2w9yEIBKqV87WxXlnV/Xx079dr0bxbkv4
         NLwnp9l0YTkQJCnNk0wTW8KluUwKkNGnHDfgYjHTY/g95Y5Uan1QhiIMuyDgZBMnGCNq
         GxHp4/mh0k8KcSJVpIXgkRhfJhM4ZS8YUKu5s84WrnAqnkIVpdZqlUXFf1yLVdEigAKQ
         oDNxkJvOI9QEPYffNrnS3dOldoMXGKMki7vH0KWx5tLdfNKQC2RYUB4ZWMxbIpLc9Ug/
         FBeg==
X-Forwarded-Encrypted: i=1; AJvYcCWRA2Mleh1/bMm5iGzggf/zHmIlRqcYvRHmV5GNZ+cROCLbPFoy7Aq6RHV42Us6n9DOpNijz1uvvRNI@vger.kernel.org
X-Gm-Message-State: AOJu0YyRS6KbhdXxBA7iacUuzLei/SbahQQxmVqjW42fj79eklTDgtXI
	1gFwilkb79JPdvwCGnskvatzXP3I4vif0H9dg0ifENmPPPxfz5w3wKQBheRvTIgLgIEZMgPlimO
	IucT7
X-Gm-Gg: ASbGncsRP+8oLiiQLY3jj+zVMnzxv1uBKl8WNP7WGI30S3ZJB7D4mu1OZfxgBDrRdlT
	Ei6iFTt90XeBluCfNBbCqoVu08jHXcSlY8os/k25mKB40r5Nq+L30u7/f24dNiEWEeovIpl+tFZ
	Qnc6fTHjrPfz1SlvnE8vJSUeYmsx/aBBr5bM4p2hwQwpLTQx5PKOwx6Cv7Nahwfjf8GXi6D1pac
	k5MyXr0uSbKIpG6aaIpY7JUeDJbcofwivfzNJ7Hd1zXZQen6csdJBZFKBpgSoi/ViECff4DnSYd
	7VIe6V1zmfzUpA6FNSCv3Sz3uUvah/k2c6buqXMLKEVXchYDOpZeK7rWlCrFny/outvzBWJDOxY
	glueiL3E=
X-Google-Smtp-Source: AGHT+IFy8vG0i552QCOGwslBhMlllbWowf+/C3BEda62UX6idzHbM3JUGCvEtXfh71U/+1SbpbVjVQ==
X-Received: by 2002:a05:6a00:4b4f:b0:747:ab61:e4fa with SMTP id d2e1a72fcca58-7489cfffda6mr17768841b3a.14.1750160308466;
        Tue, 17 Jun 2025 04:38:28 -0700 (PDT)
Received: from localhost.localdomain ([123.51.235.216])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d1d07sm8549091b3a.160.2025.06.17.04.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 04:38:27 -0700 (PDT)
From: Brian Chiang <chiang.brian@inventec.com>
X-Google-Original-From: Brian Chiang <Chiang.Brian@inventec.com>
To: krzk+dt@kernel.org
Cc: chiang.brian@inventec.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v9 2/2] hwmon: (pmbus/tps53679) Add support for TPS53685
Date: Tue, 17 Jun 2025 19:28:42 +0800
Message-Id: <20250617112842.459037-1-Chiang.Brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <f193825b-f6d8-4c27-b1f5-286af7affee1@linaro.org>
References: <f193825b-f6d8-4c27-b1f5-286af7affee1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Wed, 11 Jun 2025 08:19:46 +0200, Krzysztof Kozlowski wrote:
>On 10/06/2025 12:41, Chiang Brian wrote:
>>> On 10/06/2025 12:41, Krzysztof Kozlowski wrote:
>>>
>>> On 10/06/2025 12:25, Chiang Brian wrote:
>>>> Add device type support for tps53685
>>>>
>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
>>>> ---
>>>> v8 -> v9:
>>>> - No code changed, correct the order of Acked-by tag
>>>> - Link to v8: https://lore.kernel.org/all/20250602042454.184643-2-chiang.brian@inventec.com/
>>> Stop sending this to me 6 or more times. Every version you send multiple
>>> times, that's way too much.
>> 
>> But how do I avoid sending to you even though I need to send this patch 
>> series?
>> I apologize for the spamming due to familiar with the workflow.
>
>You sent three times previous version to me ONLY, for testing or
>whatever other process. Now you did the same.
>
>How to avoid it? Well, you type things into the keyboard, so type things
>which will do not perform above action. E.g. when executing git
>send-email it shows you recipients and then ABORT and correct the git
>send-email cc-list so it won't add CC based on tags (see manual).

Thank you for the explanation. I understand the issue now - git send-email 
was automatically adding you to CC because of the "Acked-by" tag in the 
commit message, in addition to the normal maintainer CC from get_maintainer.pl.

For future patch submissions, I'll use --suppress-cc=misc-by to prevent 
automatic CC generation from commit message tags like "Acked-by", while 
still maintaining proper maintainer CCs through get_maintainer.pl.

I apologize for the duplicate emails.

Best Regards,
Brian Chiang

