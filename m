Return-Path: <devicetree+bounces-263577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Hb7MykYh2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:47:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB1C1059FD
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:47:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DAAD530387C2
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FAE833EAEB;
	Sat,  7 Feb 2026 10:46:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255F330E829
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 10:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461182; cv=none; b=ejeE6ArcUG0YW4nIUt+0EFTV0aWBQAowmwoBg6t+iIytfaeU2lQDouxCAPl8Bm9tSt1mXPie+nWF4GqYaz6mJwd0CWswzryIKfsC6UDQHLquJdOBBy9fRtBHvVTpyGwNB5qx0QKqrubppPDjgthqEycssl2GC0a17inPSlkDUL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461182; c=relaxed/simple;
	bh=CoXK2BCYGWFQiiaocglhCyH31XZ8FR/KlVgtk9/zgv4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pi3c6K7LqviW/2EkSJ3s1PRgW8MVwRxXAWwuSX5haSMyYq9t+J5NQZH2f5HeI2n5ESIQKf4TJhbIQAKm1WXD5b0TyvXCEZ9ymwcuA/6g/2dg2Munr8+eNW+eucraxr58HPHk1xgqajRYDNSByYb4He7IQuWGt5YkTSuUcVT3ppI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-12460a7caa2so1822488c88.1
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 02:46:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770461181; x=1771065981;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L89pqiQZRW/Wm9NYpVD1B8LIYDiran9ry0quTCh8uPc=;
        b=RxAm5lQTmNE0bFAOuTzAxN7ihn3wTn7lVm0W1vEb+idOFo/LhIULEa90Z8ou9MMNx5
         TDGYNVnF0QfcqTTQGeCTg9H39fZ52Wm9jF1eOcZ2tpNTUfTVifb++n1U49vziAAAcG97
         TkUi+KMfn30C5ar0GRBoMU+E6pr627rGZeuUc/Wx32xWXvgUPVcUewA0Rjy2Jv4Ah6i1
         OuDnpt9TcY7fxJZSOQ3MpQDDLXA649O/BQAz9K05ukQiALuxdLq0qqLFHFH81eHC5cME
         WbT0n7+SUfDuimqcMf/Fta6OpzD/lN3NaWuQ+7uN5Z335qiRzx/ZDpL9O9BCegKi2Gb6
         udlg==
X-Forwarded-Encrypted: i=1; AJvYcCXLvt0zayXZjE6UWpOe/gOYV3Z/G48u3KgUFiiOCupddkuH1KiTi69G5dLiez56GmBsDd6f3jaXq2jc@vger.kernel.org
X-Gm-Message-State: AOJu0YxtM8aDlhJPAKNTQFpzvEQgODejOVquFWdLyFWjcUU82II1o/uZ
	MO5PEh1W/iDz6t0ydEgncq5e/F1XgrepdCKXz2unQZEK1PRJiBDwQOi5
X-Gm-Gg: AZuq6aLlCkWx07mKlvJDEWDSh8ex8i8lit3GU15EsJ2/rWSu+lvF+0Otks88kRpzdHX
	vZ/Avlsv6lJh1oW8XtwJeIFYIG5qqWmZ52TiV9QjoeBHYaw4+tBDOCBwYjsVgd509sToNGmlzJH
	rhFvFd+PClmoR7R9tyq1nsS+4eRKjP2taRfEv02Qbh2OmNB2bjEu24LtEHecIF2N4w2a1U5CX81
	l7NJ8bz2dYImh4SxIOmfJY7OUGrhduwLCOOxQt5E4trM6L0I/P6lKftW0TerpXl/lyOoV7FZx47
	HB8xeECSLu79O4R7E1wEmGv4+M9veVxPFfsFv3KwTwfIU9PH33Segy6JuEWyyS8IzBkbI/ooO55
	070tRMGgegUuOj/PJLQNQYss26v2idPSLBdbx2kXmijgrQljoCQ+kB+/XAjXl812wzwNugaXb6E
	BHR1Z8a6A=
X-Received: by 2002:a05:7022:458e:b0:119:e569:f61e with SMTP id a92af1059eb24-12703fcfe2bmr2818877c88.23.1770461181283;
        Sat, 07 Feb 2026 02:46:21 -0800 (PST)
Received: from localhost ([76.88.4.82])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2b86ab1aaf7sm811963eec.17.2026.02.07.02.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 02:46:20 -0800 (PST)
From: Roger Shimizu <rosh@debian.org>
Date: Sat, 07 Feb 2026 02:45:27 -0800
Subject: [PATCH v2 2/3] arm64: dts: qcom: kodiak: Add missing
 usb-role-switch property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260207-next-20260130_rosh-v2-2-548bbe0c7742@debian.org>
References: <20260207-next-20260130_rosh-v2-0-548bbe0c7742@debian.org>
In-Reply-To: <20260207-next-20260130_rosh-v2-0-548bbe0c7742@debian.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Roger Shimizu <rosh@debian.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=731; i=rosh@debian.org;
 h=from:subject:message-id; bh=CoXK2BCYGWFQiiaocglhCyH31XZ8FR/KlVgtk9/zgv4=;
 b=owEBbQKS/ZANAwAKAaR4aw2nAzSoAcsmYgBphxfuEeNo0Wy33LopcUAzY7JmEr0oAHBpc1jgU
 MajP53BTjGJAjMEAAEKAB0WIQQKMq2+gDmb5xY4WeykeGsNpwM0qAUCaYcX7gAKCRCkeGsNpwM0
 qHe7EACTbdSjKtK9H/YRnTdjrLQB4z3ratjyxahbRoeJ1zdeDAmVcgpUyiXy3ak77QLFfMZqcH9
 0tTRf6l6o/2sYk8YLAb+KBrk4VEZRz+DROShh0ITy1k1ZWyiVcmuZuryuVmfDTAV5csbb+VlDbp
 xrvYU1xnQB9ya+zXPYl7Ze0it3CxI3sV5TzaAXkaROhWY8VouYbRd5lfefwtIMwqGNV+bv/7lpg
 4hlhhaF088fA755YsW6BZCE/928ebFrniW3ypwcGLMCLE8XoEb+Nje7XFDdibrTHEuO9kdjLebP
 o/U/8yeQls2Qoz4oDyOGz0I4gt4WVwdqj74k2doKMTY6jLR2RWnzk9vTp3X6v746+ECuc9Odhsx
 FyJ8takcpX32AfoCIWy5Tt+2z8BXZR/fVZDSL5qNZRLrCtlE7qa4jD+9wUrvkQmBxF70ey/9SC8
 1b97N5cFFIQifR6SwnO8Lo7RL0yUmXV2QtrGwY7WpZytKii5kX6tC6E0kapTP+xwLRk5DFjVGo7
 7Xu5Lle4IKjka7Pk+aFkY5beGfK/MqN64W+FIT1O0UkLa4sgt5Sx2UCJkiCXLLDNZx9o0nxgpLo
 y1eb56aalmmkboxVp11jKpOh0UtL+uszk88DpO6bWqIUoMzzMNiJRPa0VsBmG3lRtb9KSYjZycd
 Lwxc13rafU9f/zg==
X-Developer-Key: i=rosh@debian.org; a=openpgp;
 fpr=2FAFEBB52F5F5DCE5570D2E66C6ACD6417B3ACB1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.900];
	DMARC_NA(0.00)[debian.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-263577-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 4AB1C1059FD
X-Rspamd-Action: no action

Add missing usb-role-switch property to usb_1 node.

Signed-off-by: Roger Shimizu <rosh@debian.org>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 6079e67ea829b5233bb87fdcb37d8a05d30fb87b..2bbbb5c5f96f701187939187b8660bf7e3321668 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -4849,6 +4849,7 @@ usb_1: usb@a600000 {
 			phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 			phy-names = "usb2-phy", "usb3-phy";
 			maximum-speed = "super-speed";
+			usb-role-switch;
 
 			ports {
 				#address-cells = <1>;

-- 
2.47.3


