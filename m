Return-Path: <devicetree+bounces-157499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F677A60CF7
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 10:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A29833B94BA
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 09:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD2641EF0B7;
	Fri, 14 Mar 2025 09:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="sAEJ9drg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E304419C569
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 09:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741943839; cv=none; b=SzqWUV/oVYU8+PbUo0NL5H1XSlivMRo4IMtO14vZT23cfGYHyj51dFQkS9Pm502HdV5SJOC5ol+iH2T3SHPXMQ2NAY0xU/xOUXccqoq0kR6IsK3Kpxtscgy49NvY5xqyw4JEENgVR+AL6RUMk50OkcsoMsAvPCHWlMxLskTlFMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741943839; c=relaxed/simple;
	bh=TQql/7bvMiWWTcBiokJKn28h+W+qXYbOIZNvdiAC8+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AKSdfbZ1Wyv1v9j2x5GhO4PukwxpX7xt8ZCEpLktFmRYMLdLsMEGJ5Y8/nUy13jQuppfMhP1TA5Iv6gZmaCshFiFZVH6pGS48CVC03AgGK6E0WkIjoDuHDExRknfMOdx9l+6IgF4m0gbgU2F3tUZHqPVE9K0DQgidysPFHsZLOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=sAEJ9drg; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ab7430e27b2so336108166b.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 02:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1741943836; x=1742548636; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0EnUUGo2HHQ13RN1/OtPiMt5tSoeJymaCLmfHSf2tq8=;
        b=sAEJ9drgHr3+wBROICba5S4zJQg7ZAo5X311awjDLWBZqkJ9xirCzZjA5gdnNP6/+P
         UQtsEDta5CT3KR9OtozNCTvlAeTbGMVZPh8U5u+BZoe2P4r86KNnzjKADf8O8hcBPbLE
         VTOT10nm/AHDuqa/DNuwBjBYkt5YRjONTvWO9UNkvMmBqZ0iErAnYqobv9AfMdP427FF
         RacKPpMYj4Lx6T8sEMBU4dTaDdLpKuKwbuaB+cSs4xxcsHRxL6asOBMvwWmU8///r0sI
         nJw7GAVLMkJmW4kph4nx/e3N1IjX4yZ/mOXqcp9L7gjbA1+03T/hhML2zQDEWTwNPuEF
         52uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741943836; x=1742548636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0EnUUGo2HHQ13RN1/OtPiMt5tSoeJymaCLmfHSf2tq8=;
        b=nbV+/62mCbbrIQxcqTB6Ndhh7RxJo06I2ncgQ4TYZTBdjVQwn2puHU3zyok5pSFdfi
         gbEKDYMNOh1j+PbqxNVohBjXovTqlDPQlvh2fpkvfY8IXFIQgobBPtTpKVDrazpbvW7f
         edqoTqW9RicP/MnFP4HYtXdVUcfyUuniOajEJX9DN8pI2GmTJL3nPPVThUkRh4Cu/Huq
         /JNrw/30ncDvM1knVSCZBat+v7yW7C8G/lHElMpZK9yh5ywHQd3JWzad4eMHaBqE7t/y
         Z/fTcyiEVXbKV2RUnQGjOst3ukshkmqMbh8RoBv6PTkf6n/HOwlshOGhytqJcd29OPBW
         OU8Q==
X-Forwarded-Encrypted: i=1; AJvYcCW6+WPihZ2n2OI/heo0mTge6I1koIGr7ph/8XD2LHygqbIOnUKvxtyUPgMtHFmFERMnuU0ETTPOad1A@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ8FZH+y/K37B4z3A4N5F2qf2wbh7PGiyaiuwaoqc/u9HRUp2i
	Ilmo9bK2FtzZm6IN+RPgeLCfm7HcrzCIqnUDFGbnpz0UVRBkytXFhmdF+1RT94w=
X-Gm-Gg: ASbGnctggO3g+RyboXbyY2BMS57/8UYNbXbbAK4oMJS8KMYPnpq+QGllJL/y/Ncf4IE
	aBtpAUmblb046OOlMVdblQbWVf+c8DpZ26LqGszfDjsbpuSIOt3D0i1D2yTZRa/d64k62ZFYgGu
	F+1joBQdAioz2MT0x56PjTlko+o2lf6F1Dz3+/cJgz+XjAVeNYbYQNbs50tKKXuecdcs2+A1ND7
	gaNQX+1ThXBDj5W9qT0ouUW50WvvnkHvx5OoR5Y4q886DCdSA1dX1p/4TdDxSem9RBSQC4B+q/6
	qrkXkFG5E2GWvExwNKlp5PU1+0dTGUx9WNqpyI5uHzTqATg/CADEu/lnVmWiQet7+YEpsV87U+4
	M60ohY+EFW2VsOPfwK/PzxPAhynZY
X-Google-Smtp-Source: AGHT+IGROEW2AOW+QYcjTEvqRULVelQ6EYGyR5ofJR2GdD8rWy92xsCBu/twsCMr/ZtxcA4CpFpYHQ==
X-Received: by 2002:a17:906:730b:b0:aa6:b63a:4521 with SMTP id a640c23a62f3a-ac33018ef75mr189422566b.15.1741943836163;
        Fri, 14 Mar 2025 02:17:16 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3146aeadbsm195582166b.29.2025.03.14.02.17.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 02:17:15 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 14 Mar 2025 10:17:04 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: sm6350: Add interconnect support to
 UFS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-sm6350-ufs-things-v1-3-3600362cc52c@fairphone.com>
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
In-Reply-To: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Define the two NoC paths used by UFS: ufs-ddr and cpu-ufs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 77ca8990c7a096f40aab5666da9f69465f59b71e..b26ee8cf66a3f53b6068efdd05ab4347fb175c61 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1175,6 +1175,13 @@ ufs_mem_hc: ufshc@1d84000 {
 
 			operating-points-v2 = <&ufs_opp_table>;
 
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_AMPSS_M0 QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
 			status = "disabled";
 
 			ufs_opp_table: opp-table {

-- 
2.48.1


