Return-Path: <devicetree+bounces-304238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNd7LrtwGWqNwggAu9opvQ
	(envelope-from <devicetree+bounces-304238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:55:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4FC6012C3
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:55:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B44D73036F20
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D01643CDBB4;
	Fri, 29 May 2026 10:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hpmz5Vxs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1683CB2DB
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 10:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780051976; cv=none; b=oFnyen8o0lGGGkU7jewdl1lh0Dm/9mPfwQWfDC+tcJJewUBNYWWenvC4somzQwqhR1xucA7AuHUsVCXowi+JrlJRRdyu1qD00hvgH7716AUIkR3ux6OgpXANkKTEalGrH1F5ynARXpl+2WkAIGpcZ7a8EZ5BZGL+miFmfOF5Hbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780051976; c=relaxed/simple;
	bh=6mv4FnV2Lco8574QK6WdeYdtGY9CzSyYh+5KpNScb98=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GhG4S4lj2q/STcneoeVk49i77YwdoqTdxQztD/MriW3R56LvYmO2ehW1lraMpHGQNWF28rUxuZnVwRb2Vr+uhvJGcHRZkMDR9zh12s57zumYcD7B7uaTa5yPafpBdvrAfac+C8DYshb7Chdxn0VxV+VQnWAWo/iJ5PNSZUnbjVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hpmz5Vxs; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-45ee6d32402so919894f8f.1
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 03:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780051974; x=1780656774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+pkLvwI8vTIWszKqjFw4gyZw7rkDmLB3Owe1rS5Li2I=;
        b=Hpmz5VxsVpV2tex8/EcxHxavFrG5YgBXK7dvj7vXaEz2Oyul3ftiCMnx0pcpbyGBOh
         ez1GNywUDArdFJ3R+9hXq4Jv5HfKTYr+4gdfZNy2gKSrPwW4aabaKV6SU5mnljVn0gLf
         zyNJK+tVh6NmV7xo+hGk8vGatJxjONdhgjkY0emPGNx1UFd5KdoIiioboP7Ca08aA0gQ
         Od9s2zJRJQtKFWfhupjG3UQ9eRMuhH9O70Rkjq2yP6BeMHI9RC60aeEKKSueRoK7W3GC
         Vqbo4xlZ+0Yjx12Chd2Z+Jl6Qc6Jz4LboRuYR+5CGur9oYMKJkni6nrIFz5LZ3iE7LyM
         n9mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780051974; x=1780656774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+pkLvwI8vTIWszKqjFw4gyZw7rkDmLB3Owe1rS5Li2I=;
        b=oe+FGSXEtmT+TllCRPRiriH3+Psy3pQrIIGlAroDswts1R/oaVaDOeijO3NFKu6Xfk
         yjgyhgkE0/Lkt4ASLo7cv4dOUKMIX1P2TCE4rCfC8hi1ARWyC/wPegaftPwUFvMKfCeO
         9hMeRf+ov74iKpZRPu0LFWSFHhg9ySZ6CmIa+fx3T9oWuGLcycS30h0YjBCuSVFxA+9U
         aGhmWduiOXNFmp0NJAzrQKaPFBOsyUuD5TutYtUN6lc4aOGiazG13y9mS8mzJqYqiYv6
         5KivgJ2wsLK8xMWaNN4KYHXT1uzD+qfm/VGMjE4qPpYfQsRan9U9cV0BrzNXx6RUYTMQ
         CRzw==
X-Forwarded-Encrypted: i=1; AFNElJ9B/VoP6y4dkY/jMp2fq+ycXx/L0Kr8FpWJUV5QmRHhBJu/NbQIkSRhZH5dELW8gqO6uDJ+/yx9LUQe@vger.kernel.org
X-Gm-Message-State: AOJu0YwPORybRuQ8lbkPf3BJe+XEBwJLpWgyKPgRhVkBACs64tD7r1FB
	7w0XKmizm88iRs/DoqKgGhK1vifhkuiKLGzBZjfZUOAwgOv1Bd+f1Z/Y
X-Gm-Gg: Acq92OE0eUtFJe2Val9ZPeaxAyTKKGjf1FS2DrJRN6XyJ12ZwAZ2Pm0QDa8iny3IKPE
	gyf9nLRSQsJhFz/5khwWL2P3p1nx2SsGwV23nTyT5NRHz9gqAIBXEIJf2hgglfFijmxsILYGLzo
	m4139nQZosVhmbxhghxUhdBV6VHG75CmfI9OYg+c0+ASXiELdouPeXFOjj8jw+z40fHlbQSBEc5
	7Cmd6qtfGXv5tL02kfDaOzg+vEMIgb1oWS4a3UzUV5lWOuLqjMBaF6SHxSmFRQxdu+Bozu/eOx8
	P12WXLXzkrJjT38F6zIj2DSNXgVpWyF9HixZ0g4b561LQ9fPZQNR4O45cNDn2RUYR6gU3EZf4Il
	hfNqW/9Idj2MNJicCSEkOov+4718sxUMS3B7iSqnFRzvoRLExyoXFQ4AoVN/pDFuyZJo7ByGNXD
	usdKza4qT8mWjcGtrJvbuPoBwOnVMRo6LhmuY6oLW7rzxLPuqPTi5Fb7/Sml1nysfHLUUcJ0JL8
	OPyCu+4flae0EVfyB3PFVPsK9ua8Va2ecHbzhmHowp4Df4=
X-Received: by 2002:a05:6000:ccb:b0:45d:4a00:b927 with SMTP id ffacd0b85a97d-45ef144d81amr3284071f8f.31.1780051973876;
        Fri, 29 May 2026 03:52:53 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-20-233.cust.dsl.teletu.it. [93.144.20.233])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45ef34a090dsm2541596f8f.3.2026.05.29.03.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 03:52:53 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 3/4] arm64: dts: imx93-var-som-symphony: keep RGB_SEL low
Date: Fri, 29 May 2026 12:52:46 +0200
Message-ID: <9eac3663982e4d0c81e3fc80fbbee3fbdcbe5090.1780051874.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780051874.git.stefano.r@variscite.com>
References: <cover.1780051874.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-304238-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,2e:email,variscite.com:mid,variscite.com:email]
X-Rspamd-Queue-Id: BA4FC6012C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stefano Radaelli <stefano.r@variscite.com>

Keep the RGB_SEL line driven low on the Symphony carrier board.

This avoids leaving the line floating and ensures the board remains in
the expected display configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
index f313f168cfb4..37bae4913bcf 100644
--- a/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
@@ -222,6 +222,14 @@ tpm-enable-hog {
 			output-high;
 			line-name = "tpm_en";
 		};
+
+		/* RGB_SEL */
+		lvds-brg-enable-hog {
+			gpio-hog;
+			gpios = <7 GPIO_ACTIVE_HIGH>;
+			output-low;
+			line-name = "lvds_brg_en";
+		};
 	};
 
 	st33ktpm2xi2c: tpm@2e {
-- 
2.47.3


