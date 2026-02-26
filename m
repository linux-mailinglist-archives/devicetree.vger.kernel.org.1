Return-Path: <devicetree+bounces-268906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDr3Gs5ioGk0jAQAu9opvQ
	(envelope-from <devicetree+bounces-268906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:12:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B74ED1A8507
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F9B2312501D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E88EF3EFD0F;
	Thu, 26 Feb 2026 14:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hKGu0CKX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2013EF0B3
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117487; cv=none; b=L1hbVUGjQOrSci1lFaZx7v8dcQF6CvCsr9gnfEpCWDcF2V483fkG4ltR1rvbOZCy/FoQxwfDdl+HtMYlLYe0/hX70sBwzSja3gaHvnfY4LeqbkSiZyson0OzzeipTRvxpZGkVjokxwe3M8AnQ+KeF98WPNOg4qVWZblPnzUKCBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117487; c=relaxed/simple;
	bh=j6sZETseMN/HjckJorIBcPNP2vyoc6UPvKGxiTKNu48=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EUxOu5wYtp8pAZs53w4rjNR+cE3TBqNKjrF627sm+lwQ2fWIQwb5Y10wxrvOMUScGfygpEwJ6XZuZIyfgHXHeLVdvYMQsbgWRrXRpkMfKxvo5rdCspOeX55oOYn6I98jW1Ie/C7gGynPuYoREQMlMgh/Fc2LQ313nqiDRQa8y24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hKGu0CKX; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso8103655e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772117481; x=1772722281; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q2WLVd83kJlGdeC9nXMYnekKTRyloV2jqdKhPZeFYwk=;
        b=hKGu0CKXYYDbzFccffFfgdIprFz7NTd/R+rYrtRzs+5OQGzb63fGcFkw4d2bf10aw2
         2vklyMd7n9rn6ifKJ4f/aW1QGGZ20kCjmMezv4soLznnxZMc+hRVed1HyMlHYqnEBHYe
         X5n1XNZHXMfICnaRf7yl+YnECvTvYVkQrn0HnKQrSEPDyhcWfOJHtAOdHllDH/mYOzkz
         doXzsbCYc8kw3L4J22vgMQOLcbAsIc8L1Qq0KSoKqBdyQbJblS4zzXKVYJpcW8T3zjKq
         B5dPWHy70VVOEqYhcpwQ6irVx0kOLRITsEeU90thtwKI9OF9bHPoQHjoe6L6Fc250Wsc
         smPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117481; x=1772722281;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q2WLVd83kJlGdeC9nXMYnekKTRyloV2jqdKhPZeFYwk=;
        b=iMZHbzxSKd6vkD8+dwpnYWFd68zmNeBC5Nem6hoj4QvBd9q5kk4LqLVvfTx80D9AJH
         0sv98o/9T3B+jLvm52+dl95Zk0hmpoDSAcK4iBMKhtfcdQI87PlZK34uUdLkbPNVO9L8
         JF+SaDfzGIJNEKE7U5+6GivC4Izcc6eI954iL9Sx46LuASRavSENytcv3nr+NImBpR8n
         2VN+/OVbDH6o9I9Nm8B4BXfajYOnmCdT/uFGi5poHCd9eBCrtsPatZj/oir7LkwgUhjA
         chw2pDcmzhi1bb2mn9OhfS/Grj/V+nzb0gzcHYAoEnAfC5/dmNs9beHc0KxGDUumFH2S
         ZUuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyqskCKFY8Je0JRgNWS6iposu0qLTNEIyabpew3VKlRYBEPPBPDq5Pot8G9UAP6O5YO9ISA0p+GNCY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz8+aIGyPNstlIvfDVcl4lOZwu6TgLEOwWL/6c+nliZaDBnpU9
	m7J8Tk/07+9ZOGiNKE4FxoxpQXdQjQRX8Hj0W+BoAGQw1OaVX/1jxhOeRQlW9KwBz84=
X-Gm-Gg: ATEYQzzEYgcxKhziatE/GNINLXj2qaXuWW4jNpPd1aAAHloEYc5ZThCz9TaNyTdORyg
	j8vbd2+pRdmFRfxSR6iF7Xk4sWJ7XSgcrwWTz7TeElZKJUZK1Si2ggEw7Ym1HR12II0K11llQD0
	995EcOGtL6sCxoWdGXeOTutZWE5zMwnfP4sTsSR+puWBoTJVhcyfLiNXo+87I5pcCThmZoTQo8o
	BeziACcMiPYmeULWcrh4gSHwvwn46Zcc4VbhuDadSdI1g0fKknFLQBF74ZhPeD7PLTEdE/KbyLS
	71yNEoMpScYa7cdqNTKo348q/TMr4Z2Iya9Tz5F7/1gf6RI5OMbICbajNGwYjlmqUmrn59s/pcF
	u5IpB4X3A+tirPbtwcnkWoPg5FdZf59qxsBQOafe/V1XnPjs0uhtX36yfX70WYMEGOBIn4KsqSQ
	1qQpVPirr7iXE1C89CLGeLD6UINZQTHI1Lj9VHfbv4daVMJNPREEPJ+8Wus9/XaTrz
X-Received: by 2002:a05:600c:8b68:b0:483:2c98:435e with SMTP id 5b1f17b1804b1-483c3df9886mr36773205e9.34.1772117481096;
        Thu, 26 Feb 2026 06:51:21 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf5fbsm36621675e9.18.2026.02.26.06.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:51:20 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Feb 2026 14:51:14 +0000
Subject: [PATCH 09/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add
 pm8010 camera PMIC with voltage levels for IR and RGB camera
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-x1e-camss-csi2-phy-dtsi-v1-9-f3f7ddfbf849@linaro.org>
References: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
In-Reply-To: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2241;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=j6sZETseMN/HjckJorIBcPNP2vyoc6UPvKGxiTKNu48=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoF3dwxUd68JBf799LexF/+FjIWhau5rrxoL3E
 vLqLswFyL2JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaBd3QAKCRAicTuzoY3I
 OhILD/0VSlAW+1HDB34YK1WJjxoNF7AkR0hKsRysLcoufB1fQH2Oigb0ePIw6nuhxzlJOKN4927
 haFRQ92pGX4AGKL7WSWfM79H9b7+A9ECRdod+jknJDaxsMB3VCNNBCwMO+MpasIGa6xLpNJj9R8
 65VU+ic11xlBJkX8rpkpACKE/7tJ/9wh2iAwGCn3A9DfKvCUQDkLzpWT65xweeKl8rkEtn1zAvc
 W3EHKXsG9VkhbjOjjoGfa3CrtxBJhjN/5e7PBI/ovlKn7o0m51Efc5t/6LWR0wRwQf3w++sSoLc
 dOSlIHxcUIZ8pt3qzT21EpBq+xv0jVxwxmBHVmaYOdM2LxoZjQAgoRVnWJ1zSvy6viocF1QuwPs
 wGwAw3fQ6vdOw4xSBRSst4zlmbveKyGLz4NsoeBKRayDm6gybJYuhW79/pkHvlSu16AGXB3P2hD
 6Epn8kvgMC40t205ewf7QN2Uar96T/1A7MkN8w8mItG8a2GEtH/GOpChTcld0Pd1nsIEUlj6E38
 iKg4wJUFyaMr7cTFSuRnmb+ev08zM9VCGu4ZhU4DgnT+HH0pIvL146tOc0haDFNwwPhlP1/oYnj
 1nItb8qr4NKFqYWoDHEtaVyI+45j3V6ug/xtnKJouPx/6L4rkvsfPYaMFjksquCCPrqH1c4ZCLX
 APLfM/FKK2aMIQA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268906-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: B74ED1A8507
X-Rspamd-Action: no action

Add voltage regulators-8 for Camera on slim7x including:

- vreg_l7m_2p8
- vreg_l2m_1p2
- vreg_l4m_1p8

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index d6472e5a3f9fa..f10dff1da7f8e 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -795,6 +795,57 @@ vreg_l3j_0p8: ldo3 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 	};
+
+	regulators-8 {
+		compatible = "qcom,pm8010-rpmh-regulators";
+		qcom,pmic-id = "m";
+
+		vdd-l1-l2-supply = <&vreg_s5j_1p2>;
+		vdd-l3-l4-supply = <&vreg_s4c_1p8>;
+		vdd-l7-supply = <&vreg_bob1>;
+
+		vreg_l1m_1p2: ldo1 {
+			regulator-name = "vreg_l1m_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1260000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2m_1p2: ldo2 {
+			regulator-name = "vreg_l2m_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1260000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3m_1p8: ldo3 {
+			regulator-name = "vreg_l3m_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4m_1p8: ldo4 {
+			regulator-name = "vreg_l4m_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5m_2p8: ldo5 {
+			regulator-name = "vreg_l5m_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7m_2p8: ldo7 {
+			regulator-name = "vreg_l7m_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
 };
 
 &gpu {

-- 
2.52.0


