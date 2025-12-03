Return-Path: <devicetree+bounces-243938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E97C9E8F7
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:45:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0EE5C4E1B64
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D792EBB8D;
	Wed,  3 Dec 2025 09:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="QHxeAHHq"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170EC2E1F02
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764754971; cv=none; b=P0n9zoaFpuM6gJfSiodcVOReKxcozkAlc/JQcascnx2pvd8wgf5LQebewaOIRe0MhbKG8oTce19Nji1BcQe3702U+k+KS65+L/3nTJ5gWfdlTe9nbeu8MSQf85ubc+u1jvhTQt7NR/qQ2JP9oABjzzXavaDpOiyOr7zBZSIN/nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764754971; c=relaxed/simple;
	bh=L8EZrcQZwMkO3dFdkYIcFzM8iyeCwBHYJmiAERGny1I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ISIYXjetDToGsaeaKOtA6q6WK0YITCvVPdjBlZL8dhYWCeLwe6jT79nhbjKfP/Xlbg0BTlfWhqV/KCb6N+/hFwwJEET1BykWCjwXNscyl8mDey0+NaV+oMeRndOK5LaoXa66jrJlHSAuEltqTSCBqNBn5Z65PyUYEoU+K1V/kOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=QHxeAHHq; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1764754968;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EURsuo+NfVvBp/nnnpYxoQDmOW03jzYOphwNfnEFR70=;
	b=QHxeAHHqaHwZpljoSJPAl3Beb+ggOnkWnVDsD7sacT8KXQtgKod6B0nnx95cwvOH1LXTLT
	x6213eseLJH4by+wWMN1qESq2cxLybqZsS3Wut5DYTZ0jamaXo+01VtGCJPy1FsyuwVHzg
	UsN0wVR633HZGwnxs7MMZf4xBrwCeCOcx+erPSpDYUmk2KPiiZ8XjGFqopptyHnquqpHgy
	Vfx4SWr2MISvL6cIkerzRNimMLX5/9XI27UFo6BP6HgWW4LmBLWpClmvU6MqafgASyK8qn
	S/5gsF9JrCRXyvYKOZd2p2NLQUNErzYbP/SMwe4mbnzUA7PwcHF3wC/NP7L5Mg==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Wed, 03 Dec 2025 01:41:00 -0800
Subject: [PATCH v5 11/12] arm64: dts: qcom: sdm845-lg-common: Change ipa
 gsi-loader to 'self'
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-judyln-dts-v5-11-80c1ffca8487@postmarketos.org>
References: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
In-Reply-To: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, Amir Dahan <system64fumo@tuta.io>, 
 Christopher Brown <crispybrown@gmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764754921; l=835;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=L8EZrcQZwMkO3dFdkYIcFzM8iyeCwBHYJmiAERGny1I=;
 b=1MXHP6x1gW9iSIFyXw1uiFdVrBKawXJkDfwMmxxB9x0CPMqwcrGTIfOEzKr9bY5hBbptz7d8i
 JI2s3eFAEu/CsRczgdCFvS0qK9kBkM6xdIUBeL25aAtkBGbFcXc8Pc0
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

This lets modem get a bit closer to working

ipa 1e40000.ipa: channel 4 limited to 256 TREs
ipa 1e40000.ipa: IPA driver initialized
ipa 1e40000.ipa: received modem starting event
ipa 1e40000.ipa: received modem running event

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index 1a80921ff744..bfa0ecec82fd 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -469,7 +469,7 @@ &gpu {
 };
 
 &ipa {
-	qcom,gsi-loader = "modem";
+	qcom,gsi-loader = "self";
 	memory-region = <&ipa_fw_mem>;
 
 	status = "okay";

-- 
2.52.0


