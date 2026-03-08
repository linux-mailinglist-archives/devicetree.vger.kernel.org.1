Return-Path: <devicetree+bounces-272535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBt4O6oDrWncxAEAu9opvQ
	(envelope-from <devicetree+bounces-272535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 06:05:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 885ED22E8C7
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 06:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A193F3014C46
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 05:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD2923EA8B;
	Sun,  8 Mar 2026 05:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="E9JjCrem"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-07.mail-europe.com (mail-0701.mail-europe.com [51.83.17.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A55902C032E
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 05:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.83.17.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772946329; cv=none; b=BQwQzaqB23+enBcqp39HErduT+lbMLEOnyyblhXu3V+YAPVXklDWlKpF0eZH4bKL36tuPBbtEyIFWnnGj3c7LM9oPzuztaQ5mqkjxyfoJ13nNEVqHn/UJDKRx2cdlTD0lPYX//dCaVOYRDClxv1hyM8FuZnq3Y16tiZ/saLIJYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772946329; c=relaxed/simple;
	bh=qmyyTdaSmeoExNbUZsFnvRP52mfGOCmNy0V2Or4UnNc=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=Zws1mB355pKQXlY0YxBvHZgxySQIByLiny0/4mvZPwvdDMgqJvKoeHFH+kD0bwm4lkrAVFlH4TLSmV4c9xE1iame7LfWnk9YbxHYvonurNcxiJdLt8zuSwD8npx2M3H6wgmS/jjad2dT/51GAZcrXP/muTzlM1+JHKg4tZi62Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=fail smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=E9JjCrem; arc=none smtp.client-ip=51.83.17.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1772946312; x=1773205512;
	bh=qmyyTdaSmeoExNbUZsFnvRP52mfGOCmNy0V2Or4UnNc=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=E9JjCremaLeRwm2nu/MDQdwHnIdTIqFkbPerlsEYYOwv79ef1r+ltIUuyKcT2O29T
	 MFQk3jatIFPlzFHAlE1FYaYbJJmMU0tTgXQ+LKk5aRSYqMw48p0UTiK8lr3voXr+yI
	 ao6brWm+ABFFyKNzygvfnGTOGxysJM6poP//gCab1FCc8reldTWQgBZQ0ZUA9f1kTz
	 631idTKth6MHLa+j7s4/jB3DutrLr27AjAZeoTOBj4lLYxKioxBb8pYI1bH5JaDu5R
	 cXUBvNpljxa3N9FWxjhwsxHE2oD6nnKUHC6Y+pS3JTTNKxuIwBaFObA2qUPcwJ1lSM
	 fbRxcbHEYFQRw==
Date: Sun, 08 Mar 2026 05:05:08 +0000
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH] arm64: dts: qcom: sm8250: Add label for reserved-memory node
Message-ID: <20260308-sm8250-reserved-mem-v1-1-889eca3c11ca@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 2964390c5d265e97a036d657680c5090c6753b5d
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 885ED22E8C7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272535-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[pm.me:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[AKoskovich@pm.me,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.923];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:email,pm.me:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

For some devices it makes more sense to just redefine reserved-memory,
for example on the ASUS ROG Phone 3 it is completely different with the
exception of hyp_mem, xbl_aop_mem, cmd_db and smem_mem.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qco=
m/sm8250.dtsi
index c7dffa440074..3298c36c3e55 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -763,7 +763,7 @@ opp-120000000 {
 =09=09};
 =09};
=20
-=09reserved-memory {
+=09reserved_memory: reserved-memory {
 =09=09#address-cells =3D <2>;
 =09=09#size-cells =3D <2>;
 =09=09ranges;

---
base-commit: 11439c4635edd669ae435eec308f4ab8a0804808
change-id: 20260308-sm8250-reserved-mem-93fd18152c95

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



