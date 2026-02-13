Return-Path: <devicetree+bounces-265228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIE2IFKWjmm8DAEAu9opvQ
	(envelope-from <devicetree+bounces-265228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 04:11:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 680A513293C
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 04:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABC7E305561B
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 03:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 178F0226D00;
	Fri, 13 Feb 2026 03:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Ow98jb3e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m2467.xmail.ntesmail.com (mail-m2467.xmail.ntesmail.com [45.195.24.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090FE1391
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 03:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.195.24.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770952271; cv=none; b=qVZBu0Ye6zPZXe9acSfBqvnej/0pEdRLir5UWPFAixb0fkJmrKU6v3jfPxt1fXImUE8drdd5GcFWjFwiDgUM/BhHsQR/w+MZjOupWQ61fnnlBVkpbtps2lNZ4yp/EeiHT0f4nPEoBoGmgsbSzPc0N7S03Nuq+wDpidkWEAFEz6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770952271; c=relaxed/simple;
	bh=ODARTp15Dvr+JHW9wBbvM/EFe4WjZXFq5XLcRLo4KvM=;
	h=From:To:Cc:Subject:Date:Message-Id; b=euKmLSVf+ZO9oMuUCj5syMhmIgs3UDfpMOoBVm2JwVWvzX6vcDRgXiU3eTiYUT0I1rEwwAL+Ve00EQgtDBhidV9lK8xfFHHG5YR36pFV5YZp91m3CkLi7KqwYhcpWRt9OeGJ06JbZYmU3WCk4dPeqzfzN5ai4IFU6KgawOk6IgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Ow98jb3e; arc=none smtp.client-ip=45.195.24.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3409df6f7;
	Fri, 13 Feb 2026 10:35:31 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add node name for RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
Date: Fri, 13 Feb 2026 10:35:12 +0800
Message-Id: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9c54da7c2909cckunm7ce1e19a2549dd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRhLS1ZNSkpLT0JPQxkeGEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Ow98jb3en+4ABLKZwDKWCanlnkreYzVQ3QaJjiV6sHDwiUz3uZA601kZJj6VyNDJg/4DxmlAvDKKPdWfb/4Z7TzVxKYaqyoNQF6rP8cgkk/v7uBzxUQdKD4hVTFYM0FhgLCtOMigsAvu6d6wyNkFwVSifIwI8O09TuErd3V6hrA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=XxmK3HFmssnRdG1OE46jOlrclI9LI/rr1ZSnQt+y304=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265228-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rk3588_pd_rkvdec0:email,rk3588_pd_rkvdec1:email,rk3588_pd_venc1:email]
X-Rspamd-Queue-Id: 680A513293C
X-Rspamd-Action: no action

Thus the board dts files could add property for these nodes.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 7fe9593..4fb8888 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -907,7 +907,7 @@
 				#size-cells = <0>;
 				#power-domain-cells = <0>;
 
-				power-domain@RK3588_PD_RKVDEC0 {
+				pd_rkvdec0: power-domain@RK3588_PD_RKVDEC0 {
 					reg = <RK3588_PD_RKVDEC0>;
 					clocks = <&cru HCLK_RKVDEC0>,
 						 <&cru HCLK_VDPU_ROOT>,
@@ -917,7 +917,7 @@
 					pm_qos = <&qos_rkvdec0>;
 					#power-domain-cells = <0>;
 				};
-				power-domain@RK3588_PD_RKVDEC1 {
+				pd_rkvdec1: power-domain@RK3588_PD_RKVDEC1 {
 					reg = <RK3588_PD_RKVDEC1>;
 					clocks = <&cru HCLK_RKVDEC1>,
 						 <&cru HCLK_VDPU_ROOT>,
@@ -926,7 +926,7 @@
 					pm_qos = <&qos_rkvdec1>;
 					#power-domain-cells = <0>;
 				};
-				power-domain@RK3588_PD_VENC0 {
+				pd_venc0: power-domain@RK3588_PD_VENC0 {
 					reg = <RK3588_PD_VENC0>;
 					clocks = <&cru HCLK_RKVENC0>,
 						 <&cru ACLK_RKVENC0>;
@@ -937,7 +937,7 @@
 					#size-cells = <0>;
 					#power-domain-cells = <0>;
 
-					power-domain@RK3588_PD_VENC1 {
+				pd_venc1: power-domain@RK3588_PD_VENC1 {
 						reg = <RK3588_PD_VENC1>;
 						clocks = <&cru HCLK_RKVENC1>,
 							 <&cru HCLK_RKVENC0>,
-- 
2.7.4


