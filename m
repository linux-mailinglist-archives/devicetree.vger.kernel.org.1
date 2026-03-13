Return-Path: <devicetree+bounces-275407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJ7MGIM1tGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:04:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 181462869DC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:04:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF98030883B7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851913C3C0F;
	Fri, 13 Mar 2026 16:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="NpTAfhz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996AC3BD65F
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417647; cv=none; b=sKHgpL5tm7Dnaiu1gHz+Bz0HiWYJ9NFXwKaRCkwxH5E+eRcqmeqGixpaAqWFajtqeoH+OcComTDiNAuHdmpGCX46x/0+VWuCi40LSbcY11eMu7Z36CkjiBzUuOF5AW964Ps2dlHe8xafi09EinuOJcQXEHBtfnQuUZHxvX7yIyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417647; c=relaxed/simple;
	bh=u2HFQojXGX4R4xf7AuyY+WqykoxATSU3T3sviOlK8TE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UCDeXdlas+L3SetAAXfov8i9V7XkDTQg2hsy53Xxn+o/2euPxjaAey6QL+oDcBARuK5frt232wEvD0gfd7WIT727Lulla0swK+hF3ASKCSKvkywTBEPVwZvs+d75iU0ewmXJLteGflBT8rukwdcItNfWwlhp3ICX1y+f5qz/cxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=NpTAfhz6; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6615c461d3fso2374235a12.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773417644; x=1774022444; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5VoyK/eV0axN3PuzlsvqNP6/uR8w8URq1HoocMfUr5Y=;
        b=NpTAfhz6SIvRqLlYmzEdsOaY1hSy0DoWoA4je64nqVmR4MUUfFfxz0tk0PsJgliClf
         fV093D7nKE+hFyDISd/puyyIcV457QuokZQs2oytuxPORz+FVAD4P8n3af/aw+vaDpGD
         z/NoLdgJhXVVMvdFQK7nrT/50sT1J78I1ttqTWYP2JaoY6RbtDjWoEsi13joL+tFez63
         AYgkaiR+pbo9hpBg63/EwV1XXnO90lqi8T5/7326XOqngyYkXGraZjpGJD/0lKQ3if2W
         Q6O75izerJFFqYbRLSnWhc61lwvMR2WAE2SAy55gbMGXqRYsvsxo7RK9Va7z4WsUPmdb
         sNGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773417644; x=1774022444;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5VoyK/eV0axN3PuzlsvqNP6/uR8w8URq1HoocMfUr5Y=;
        b=TAj1IZDJXPJSMc1sKIzkRtv64+t/e2e5X6YP5PFDit8r6BoX+NObOMMqjnl5vuX0+4
         h364zzQ/7TdM2lKaIsN6VED1VPlF3DceV9MAvmSFsJbnXRvrl66giHj1PRzuhw6WTkqc
         1r/OTrNGXLgE0rXwFNz+A2IszxrrCMG6+DksPuaxpPj60xlYZujQGpNCVNy9UXa4wqBh
         HqsNKaRXeI50LY5eUvCUR2ijxxd+uOVcaaXRPMqQanc0Ld3woveMibEgm5KXOg3kFoi5
         q3IoWwT089IFhLkGxVrPdeqRUZ6LSqd9U+0YMiu3OoevaUevFCBRi7yNVYnqec+NH9aF
         Mk7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVFdU462FgvFRWJBc2630fv9qtdxjbbvEHU2yTTtCjV2QFoUJRd91DwVq4wnZklVHVTUq0khB7jV5vq@vger.kernel.org
X-Gm-Message-State: AOJu0YyyPNJ7EvTM+dvynomodiEE/gdgOoeTs0drLT4Q5Blb/CFfDEHL
	cOI+H/wDvyHWf+pabhkkMlwjt6ip5hkeJDHSDPdxOy4zEu30gcgCssZEc+oYxAnuFYA=
X-Gm-Gg: ATEYQzwwNcZ67dj0xsK3EN1UX2PnpHPzLucMOKv2SO6+6Nme39rZH8w2K7OCRgsy14U
	W6HYBNGQ3jadKEFmwdXDgsZCqgeNXmLef4rBhRaBPuxrome9J+NB/fTdnFZ7mevKfI9408UGYcR
	XCWRJ3TkMTzHAQfydL1whbUtKDNvSaQqwt6G3NhIM4HOXHbGODoE6w6UmE9KKghmA8wWsNIBPdV
	g85l61n5lATdpqywEBs2KCOrGzpnvqnbYjH121MmhplRDD3UEQ+R6ikJm0kZ3qeq+ceVZ6Se4YX
	iGC9bznkcATwLgmwcsT6oHtQF7QDFNH9e+06XNK2oWn1GACeSx+Mm1K8BCdVOrKc+7zutlFX+Zd
	+kKHqkB9nxeDElp8QNxuykJIsU+0VkU2oymVttjcmjXlBCLEl8mF8jNmbEu/G4pxcGszPp7M9X5
	wlLd+k1yfMaJYp/jpF7IVzPoOh/CIjR4nl0mFz4qmqrJnMC/QKNGUumumbnl3OilJuyMf6kBVTU
	oKxARogBuKWb7tv
X-Received: by 2002:a05:6402:f0b:b0:663:4965:6b9d with SMTP id 4fb4d7f45d1cf-663babbe171mr1684829a12.16.1773417643802;
        Fri, 13 Mar 2026 09:00:43 -0700 (PDT)
Received: from [172.16.240.100] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6634fbb94afsm1397100a12.4.2026.03.13.09.00.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:00:43 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 13 Mar 2026 17:00:40 +0100
Subject: [PATCH 3/3] arm64: defconfig: Enable S5KJN1 camera sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-fp5-s5kjn1-v1-3-fa4f1c727318@fairphone.com>
References: <20260313-fp5-s5kjn1-v1-0-fa4f1c727318@fairphone.com>
In-Reply-To: <20260313-fp5-s5kjn1-v1-0-fa4f1c727318@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773417640; l=634;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=u2HFQojXGX4R4xf7AuyY+WqykoxATSU3T3sviOlK8TE=;
 b=9XWr43PWDzY6X/dY3A15AymbSG79hW+kPEIL1OIu8sS3X0H8+LRicligqezhXi2C2b4MzyH4+
 QwV87qEG7c0DUrTlJyq0mkDAPqKGLs37ltwwlez9STtrhbB+GgxjtsU
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275407-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 181462869DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the S5KJN1 driver which is used for the front camera on the
Fairphone 5 smartphone.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b67d5b1fc45b..0457618a38d6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -943,6 +943,7 @@ CONFIG_VIDEO_IMX219=m
 CONFIG_VIDEO_IMX412=m
 CONFIG_VIDEO_OV5640=m
 CONFIG_VIDEO_OV5645=m
+CONFIG_VIDEO_S5KJN1=m
 CONFIG_DRM=m
 CONFIG_DRM_I2C_NXP_TDA998X=m
 CONFIG_DRM_HDLCD=m

-- 
2.53.0


