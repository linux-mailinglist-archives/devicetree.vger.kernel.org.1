Return-Path: <devicetree+bounces-277456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKSCNBcFu2kgeQIAu9opvQ
	(envelope-from <devicetree+bounces-277456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:03:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA902C250A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 21:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B929A3020A7F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0B036B05E;
	Wed, 18 Mar 2026 20:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OwiNPjyy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCC534DCD1
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773864212; cv=none; b=HLeuDGn3zQpWMpXNbof62DLgVekXdJqxrkFKDxUyaFTaukkMkJIGW+BrgDHD9xE257/Lj2UjN8mbDyNdaMNMWSmbu2/TspcALnWKiHRl22qLtS2ULGKqNz3zswiDujtRO0L0jDVw4yXvkKWMb9bmOoJwtS/HvSSlWvxWZaGuRJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773864212; c=relaxed/simple;
	bh=Mn2lWQS7ei0UHnIv8m0YFo6PIODlXriq+9GlB928c/g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sq5DwufyG/MFKoaRiaGCf8UYFEH/Nbe1nt4w6bSy2xBegIdgq21hIWZf/1sPXdzs+cpBEKw3GQ61Rhvu7QUAzroAO7SlRN0ypSqlB4ZNhHmP5fgvCZaf7azyFAUM3Ve9x5+LTRTD+ZsbU/Np/BRsw8hDyARh5EL4XBAg/y5wFsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OwiNPjyy; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48538c5956bso1615585e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773864210; x=1774469010; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mn2lWQS7ei0UHnIv8m0YFo6PIODlXriq+9GlB928c/g=;
        b=OwiNPjyyTXRp00k+cXuusiEu22o1mZjlCo+VKENocNkL6Bj74dMr2OwBOZggIPFgwQ
         ozSiGAT+HfijhgKMDotdHf5lKuBkFhCz5q7w+w+SP/lyl2cpAHuHJyLgU/aeI/AMrqaq
         CPo8aORBkir2iX4xVBf3ab8T/8hrlkSZD3T9l/oSdW6xfitl1AHUkc5FI0YNXPGCp6EJ
         0gyN981uRO2aX3DvkfdzC4tqAnJQi+jVOTIHy9a7YeGBWd5p9H3xYugaTktgUDfAPTi9
         0MX7hCeq205IPnG+GfmxMfU1KSqbmX+wo1oDwkuoKAdR8/XlDiPfKgM1OBCCzQuArpHZ
         A5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773864210; x=1774469010;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mn2lWQS7ei0UHnIv8m0YFo6PIODlXriq+9GlB928c/g=;
        b=Jex6YaEIaKjXDW7b/KhjK0gTf1mjuLnxp4PWSsKkBA/yibVEkTAk/hr8SUe1PlbAe5
         qctMe/4bfhrg3msIK7qPZTACxCDvQTHe6TcWxEMdnlFHlABPNPVZNJ6POQ/ORr0D0ubz
         VzJawdR5bE9xrwCHIQPdKbfZ+OAwu7iv/J2wEnDXwHRhiTSEKCmrVnbxcpJY0U6qJKjO
         B7a/BWvx3OFt2F3eQGWFV1kXWQckN9wK4v7RzGYMHNJocx4jpSmAPYpIBpSBT0/CuYPN
         v0c2FEf+rC99uLejSjBe/9o+iXvIv1uy9qXmAo7jy/CRLVLpScJo9ivqYoJYTL5t3yFc
         +H4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWXQ0cwcZ1okYqvPVnh9kxHSovPi6YL42d7AmEIbw8inkBUYLck6dSQrLQuAN+vsqTf2rkT/mu4DHdN@vger.kernel.org
X-Gm-Message-State: AOJu0YwpXafdLqlJHQS5JUCbMihStZ2um16GEsdSnYZlaq/cyN23A6Co
	L1vMLqqNhkk4deryh25cOv7sKBDb3TwtmRB/qOkhan2SwUlLbEoTu4fE
X-Gm-Gg: ATEYQzwSdC7V3KwDf5fC2BBDgDcbsYFiu6Knb7qA+ERy9KxfblyWd5fD8AcC0y9zF0f
	dOTfq4La6IVkEU/pIe0OGaxuuRnzKdIWkDooMc4yzBYLXR00c5IBUkRSpX3TTukmZP3Db7NNPOo
	vkUSUMg0YPWMs1XuedNQa8Od+hV4CFLl3ODb4W8qtUfU56Pw1VMHCR8vTqQ2V0lcl6vxbRrumea
	biOFvgctsRanK0V7aF61zioiNGKkmcQ9Cl9E0ugiuae0AUGYLzvjAqCM/Mx1Vh2ydaU4GbXHQxo
	icqJ7BggCZfjvsrx9nS+DoqZpdoD4QuDWXnm3EMOYLMjkJbdzn7aHTcalW5DBLgffNU2qbHA9UL
	QyIkFQ8n/EaJnNACYvns3C8/t1d7BkOhixRNoSJ/jUCSwsVWnUhOU4C5nLSFZ3qnllyRWQGgxWk
	/7lLLhgtjQL1GCKHOgdJ5RLlnA8U8dAvWOB65BGNm71oBjH+z3MrTdDP4ZCnjujBPEQAEfhyD4
X-Received: by 2002:a05:600c:64c3:b0:485:38f1:5cec with SMTP id 5b1f17b1804b1-486f8b324a1mr15085255e9.7.1773864209194;
        Wed, 18 Mar 2026 13:03:29 -0700 (PDT)
Received: from flaviu-Aspire-E5-572G.. ([5.15.232.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f45d8e3dsm27444815e9.0.2026.03.18.13.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 13:03:28 -0700 (PDT)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Flaviu Nistor <flaviu.nistor@gmail.com>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: lm75: Add label property
Date: Wed, 18 Mar 2026 22:03:24 +0200
Message-ID: <20260318200324.4365-1-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <e82aefd4-384e-43e6-a830-c7728f642ae2@kernel.org>
References: <e82aefd4-384e-43e6-a830-c7728f642ae2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277456-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[suse.com,roeck-us.net,kernel.org,gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[flaviunistor@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.766];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7CA902C250A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 14, 2026 at 10:50 AM, Krzysztof Kozlowski wrote:=0D
>On 14/03/2026 08:48, Flaviu Nistor wrote:=0D
>> On Fri, 13 Mar 2026 14:26:35 +0100, Krzysztof Kozlowski wrote:=0D
>>> On Wed, Mar 11, 2026 at 12:58:07PM +0200, Flaviu Nistor wrote:=0D
>>>> Add support for an optional label property similar to other hwmon devi=
ces.=0D
>>>=0D
>>> I do not see any support being added here.=0D
>>>=0D
>>> Subject is not accurate either. You did not add the label property.=0D
>>>=0D
>>> Best regards,=0D
>>> Krzysztof=0D
>> =0D
>> Hello and thanks for the reply.=0D
>> I probably did not use the best description and subject name, =0D
>> I wanted to be linked to the other patch in the series).=0D
>> The label property is already added by you via the hwmon-common.yaml.=0D
>> I will have to send out a v2 for this series so I will change the subjec=
t to=0D
>> "Add examples for label property" and also specify in the description mo=
re clear=0D
>> that is just a simple "Add label property in the two examples."=0D
>=0D
>Your commit msg must explain WHY you are doing this.=0D
My initial intention was to make sure that dtbs_check is not generating err=
ors,=0D
but since then I got to understand that the example section is not actually=
 used=0D
during the validation of DT source files.=0D
My second intention was to add the label property to the example section as=
 a good=0D
practice, but I also have seen that this is not a general rule. As I unders=
tand=0D
this is not a mandatory change, I will drop the binding patch from v2.=0D
=0D
Best regards,=0D
Flaviu =0D
>=0D
>Best regards,=0D
>Krzysztof=

