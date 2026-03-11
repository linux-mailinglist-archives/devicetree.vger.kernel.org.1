Return-Path: <devicetree+bounces-274232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAyPBciXsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:26:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 653EF267532
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:26:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3385C3087044
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092BD3E1CE0;
	Wed, 11 Mar 2026 16:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="yclnub1P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507C337189B
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773246309; cv=none; b=cLz+PR2Jd6UFffbiDGEG6rGoo5e+/RbkB6ppvRci77NYsNam5n5YZclrdE19hDUFM2/joevRpAAq3G4Khghzv/nwGv707p6Fggm3eq2wn8t5GkdxcWSm4mxGBy4GNztXAR6GkPsgqtD4DKkmp6SB6nMNxaBbYTTMY9mepspJpfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773246309; c=relaxed/simple;
	bh=SrETXia2AeuYWSUIAN84IRhX87WCsAlPD9OXpI+Iy1o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Q8EEECG+jw4QvIi0woyUJxdKY4zOdNE1is3L1k5or6D9WBChY9jyIQkRcdRDmO+4ZvYpd/AYVAocHq+TQRtrRgcp8LEbt/pgWAZ3iQgIpkcbd135VBUu4mMB6IDfLvd2OICoNHSyz+wIuo0RxZm1fQfgM4LIx7g4R2VZ9BhdY1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=yclnub1P; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-439b7c2788dso52314f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773246306; x=1773851106; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=avEg50b7lIE4cReK2Q5lP00wp15UEOQn11C/oczabmk=;
        b=yclnub1Pu64wZR0GzFwwPyL+JSncOyqPMcIINB0heYcQUt4QoobM+3YlGRdlVVc3IW
         Kb6c9P47yfEIs44hJfx8zF7d+pRgyIHpwzD8mHnPTjZJ/CY5TVmZt8B0DhJ7rbz8lShw
         p6AiC4cO5pVv40O1yr26OWokS2RIOvW8JWTo96LXe/de85KQ9Zmf9PtHtijqjOyPXL7H
         jKi4a5GOuc5D6+d6gjtryGW2w64oi2cpRwHxM/uPRdEjC8FDm1yCMMKCcktkj/zLsjAp
         ULsByDScwRYK2zi4UW9NG/hYYSne9VgfFHxlKgRMHYnWomkpC3XxJWcVWeLXSBl/LTPR
         KCMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246306; x=1773851106;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=avEg50b7lIE4cReK2Q5lP00wp15UEOQn11C/oczabmk=;
        b=MybLRuQUk0WHJyPyvK889VNF9Y+pzplgiY3iirLDpH0ytVSwUK6UzrOnus2KTSdkre
         0yngFUJCjx0X0221m5o3dVChVrCW8yNBCdt6+dx3t0HoHnSnAUoC+dH/+U3cQMy2ZfuK
         MPU0IY9Sr4wDBkwV8A0PBVzD3ZLXHPo08+JkowaQ1F3kuoNDmPY+kCTzBX2N1j9o0tlZ
         bCcKm8YSJLHCW2IX1aQzC7nPExzkZB4GkTTBquLPKw3DwiWETCBzvVKcWUph0KSCQY0e
         LNbG9Tu1Iw9W+HQlQJfLxHIyWBN4IllHD5IjI/aHaYK3XtdrPan/t1rcbmGoROkSskHd
         sZWw==
X-Gm-Message-State: AOJu0YxbDjvXz2Nd0NH0bfsMBtbmWnkSCXxyIuLP6p144RXGpVidhwKA
	kL/Sh6WB4RC8k63YCEGNHXFTvhAebm+p7Lz+j75ZPnCbysMGvWwzTMNAenHbP05MiKNo1txYTOf
	7rnTO
X-Gm-Gg: ATEYQzz4rdWmd74B2OAjdKjjFxK5ifQ2kuwztUKXqhSzz6hJNWELRdqFMdvSHGSnHv6
	C7NOV9WGYh/1mb/87vQoXh+ps9bIMwyfXqm7S0Q0lDQ6V8im3dY0R6vWvBbKpbDsLAbscu3vTEG
	9BJvljWWuAET2lhBro2paShr3F/WNvtZb+KaWTw99yhHFlo9LIoiKAc3FMMdPmpkWgF/aetQH7L
	tT0HrTvJOSTkWS5lM7mUMzHizCiTkWuCiXmtzZT7kuDn91YkeK/Syrm/h5JPuTccTBRG6RF5/hE
	4MpqnszQipoGsw8WXWl/IWnjpRVO/ah4QygjBKU6bSVnsUSoDyKC8E67T8TcbqW+KAQVbOnOa0f
	cmu/IxQroKSGkBypM+fqpptW4vyelB3fkHuFG53HrkaztOvaNhEn/lHsY5qygog/ndL2yrtseaw
	XAuxQ7iWO+kDG6V73wtjoPQ1IO8lxAfLw3RUPuFEggIhlsVvCUG0azsswzgQ0vx2DbqISlasIGJ
	N8ESBqgCk2XNJPB
X-Received: by 2002:a05:6000:200f:b0:439:b1d8:6084 with SMTP id ffacd0b85a97d-439f822334emr6514903f8f.44.1773246306286;
        Wed, 11 Mar 2026 09:25:06 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1a76e5sm295946f8f.12.2026.03.11.09.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:25:05 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 20:25:02 +0400
Subject: [PATCH] arm64: dts: rockchip: Add analog audio switches to RK3576
 EVB1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-evb1-audio-switches-v1-1-0e0199e56c80@flipper.net>
X-B4-Tracking: v=1; b=H4sIAF2XsWkC/x3MPQqAMAxA4atIZgOmagWvIg62RptFpfEPxLtbH
 L/hvQeUo7BCmz0Q+RSVdUmgPAMfhmVmlDEZTGFsURIhn45wOEZZUS/ZfWDFuildVXljHFlI5RZ
 5kvu/dv37fqkBMDplAAAA
X-Change-ID: 20260311-evb1-audio-switches-573b44c22b16
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1099; i=alchark@flipper.net;
 h=from:subject:message-id; bh=SrETXia2AeuYWSUIAN84IRhX87WCsAlPD9OXpI+Iy1o=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRunJ5QYZZe9/vcC+Z4I4+nEXcWqG569EBsSvXas39eb
 cx4tFpftGMiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTUMdYxYuDiFICplt/CyLDDZX9yyLZjW7p0/yVWPDXce271/yYzt2XGv59qrp5q/PwjI8OpMvs
 Z298ebLCcyr3JUJqr8bOJ8J7KiTM8N0pbxogu6WYFAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[flipper.net:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274232-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Queue-Id: 653EF267532
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These allow selective muting/unmuting of inputs and outputs, as well as
setting mutually-exclusive rules in ALSA UCM.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index f5746bc2970b..fb0dd1bc5148 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -270,6 +270,7 @@ sound {
 		simple-audio-card,frame-master = <&masterdai>;
 		simple-audio-card,hp-det-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
 		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,pin-switches = "Headphones", "Speaker", "Main Mic", "Headset Mic";
 		simple-audio-card,routing =
 			"Headphone Power INL", "LOUT1",
 			"Headphone Power INR", "ROUT1",

---
base-commit: 7109a2155340cc7b21f27e832ece6df03592f2e8
change-id: 20260311-evb1-audio-switches-573b44c22b16

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


