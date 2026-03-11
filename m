Return-Path: <devicetree+bounces-274137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCEoJdN0sWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:57:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEEE264ED9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:57:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 48489302368C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5D435DA6C;
	Wed, 11 Mar 2026 13:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bycNLUzt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4519F31F99A
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773237378; cv=none; b=ldIUhjiEUVqd0j0Je15w975NH4GbgQU8dpKwuOxbb/w50XeaLeLoOkstVSC5Uf4ZGdGtB4l+WN3xf0YJmaw7m/9mwd1BsODPkmsFQGoNKCzvK0pYXVFZAvqhb6XplGrhgMenDzpEpsqjoiTNsiTz6bleALn6nbH3XrNX7mLAd0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773237378; c=relaxed/simple;
	bh=igBxrKV+APKYUl6NU/uaSlxXytSz9/5/rEwMkJQ3O58=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Tev6V6FuEUEUS1W/0RV68N0Ywuc2cvSiR1OgOxUT1qzmOzngLtxhY//Lds9MVgWpFI9dhKgtZJgVXyauG9dtpHeDuv38D3Ql7DSoJVWHDtlmX9zCIq7ygHVoZVTXYmNr40dcpwjIC0vOGeq7jt4JbGGFepb8ZxFjGZTeb0264fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bycNLUzt; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2be3bdfda8eso7999387eec.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773237374; x=1773842174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wsNfVZt6GLcKlOBtv1buOE4N+3eK5BD7iSdzAmdz13w=;
        b=bycNLUztpau+VjteByeOIH8e4s0mMDQ9osfhhppOtrbzYIYt7paNrDJoSOHzdJhHZK
         FlGj3+SvQxkVkek10kY+/U5S/CIyB7swR85e7XmKywKu0ant2w7aS8Mnq2mef0sDSgbj
         LdPPs0cxekJvQntrqZESktCjhkTXCywkYsNDDflK3hWMD00GawNYjC/rL57Mztl2Ei+v
         OkMDQ6IhzYsN5p/M/w8xVzixGvm3XNTgWnG2xrp7YjQWVoxaD9dkH/VN1DFLlwojwPHw
         hpDIRpkFv9j6vjFGvsQc8G8AqfSrLi1FEZYL9zdIFUr2eTcQvRwPRoTUROd0bvkJ+V3W
         Vpiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773237374; x=1773842174;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wsNfVZt6GLcKlOBtv1buOE4N+3eK5BD7iSdzAmdz13w=;
        b=dO7hZjVhsiNIhsmi8vml8wQ2TFHAj4WhzTyGof3ccb1V/Z8hb+Otm9M7f2wivJ2EE3
         Gd379x/I0GXbMgY+0OyDMNqcIRTe9sHPmyaK0QNKYyKodAHXkJ0niXEIvlZYEUGh3tWd
         OcmbeTrK7iIyrU7/U4MdceI2DPAYswtcKBldmlR4e/jq0KcLB6D0UFVSrWAw3Cg7pEwG
         F5dUSDeeXaSJvNqcEQkjKusxMhaz3QI1oI8AqLdsYoBmOnGPUImPbtc2YgJ/gQwWCZj4
         GEJMbKsRO8wHwetdZYlsbCN8X03iyc36ATcOYDlPPOXabn0IzaC3DJ2Ppx/yvhRthfD4
         +BzA==
X-Forwarded-Encrypted: i=1; AJvYcCUIo6YyASwB2bukAGsxiAcihaoBD7KTqkszJgrnr2kMeGa2zkITEiyiVlhyZ/dMEAQnn6KsstouQYYI@vger.kernel.org
X-Gm-Message-State: AOJu0YzgnWn7uE2mE37qFv70diXlHpWvV//ROhsQ7PuJyNN1j9WVZl0/
	pnKyy/RUwhhrlw2ZGpb0ynAAIUEqi2M+scrWaiu/vVFU7NMJYSNGKbGt
X-Gm-Gg: ATEYQzx1DZTPgfzAZpVZ4MJD6JSgiFCON8RDL3fTHl1I3dSEIPjSvy26dZ9z5Ph0DtS
	wiFbc1SgYrc68eqaDCFqUh6+PXEk73iA87k5fUcUuAl24lfc/4bgp3NrpATSKdb3zAjQ71Q+UEk
	4JbSVWaryufsw1oVFn+MJ2iOEoRIGSvawtFCNS236MVOxIFhvb0zCkXqhwxL2aT5wUx8YClKh/Y
	6v3/Eoemhd0Hp8GNiWHJFvv/ziojBjG2QQ3NyYHP5IKpmnHVWGl1naV4azQeOvF9JNuPjJH/FKl
	ValsEbaf4La04vUS0DIHzMduIbjNZHeAhiT6d/jaUgQGst3zDs4igUsA7ll2wdxvX7nzFLWi0EQ
	7SBO8x2ZuvKz+UgU3Z6MAxsTV99IyNxKdzlW64UNBJraeLee6DT041PjRPZcMap+L19qnde2IZy
	ranHo1WVxm+TIzQ1LW/0LlPRKTxyelGc7VOrdhU5mv5pmUTnVCOV1/oE1zoCkOYLdpDqaDdg==
X-Received: by 2002:a05:7301:1002:b0:2b0:2e5:228b with SMTP id 5a478bee46e88-2be8a5a87e9mr904558eec.33.1773237374035;
        Wed, 11 Mar 2026 06:56:14 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:866b:f519:b5db:1242])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be8a8338dasm2608352eec.6.2026.03.11.06.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:56:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH] ARM: dts: rockchip: Fix LED node names on rk3288-phycore-rdk
Date: Wed, 11 Mar 2026 10:56:04 -0300
Message-ID: <20260311135604.21634-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3FEEE264ED9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274137-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_PROHIBIT(0.00)[0.0.0.62:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,nabladev.com:email]
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

According to nxp,pca953x.yaml, the pattern for the led names should be:
 "^led-[0-9a-z]+$".

Change it accordingly to fix the following dt-schema warning"

leddimmer@62 (nxp,pca9533): 'led1', 'led2', 'led3', 'led4' do not match any
of the regexes: '^led-[0-9a-z]+$', '^pinctrl-[0-9]+$'

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
index d411fd9811fd..46362e804daf 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
@@ -125,25 +125,25 @@ leddim: leddimmer@62 {
 		compatible = "nxp,pca9533";
 		reg = <0x62>;
 
-		led1 {
+		led-1 {
 			label = "red:user1";
 			linux,default-trigger = "none";
 			type = <PCA9532_TYPE_LED>;
 		};
 
-		led2 {
+		led-2 {
 			label = "green:user2";
 			linux,default-trigger = "none";
 			type = <PCA9532_TYPE_LED>;
 		};
 
-		led3 {
+		led-3 {
 			label = "blue:user3";
 			linux,default-trigger = "none";
 			type = <PCA9532_TYPE_LED>;
 		};
 
-		led4 {
+		led-4 {
 			label = "red:user4";
 			linux,default-trigger = "none";
 			type = <PCA9532_TYPE_LED>;
-- 
2.43.0


