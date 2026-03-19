Return-Path: <devicetree+bounces-277845-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MZAJL0UvGnbrwIAu9opvQ
	(envelope-from <devicetree+bounces-277845-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:22:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3240B2CDA4B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:22:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A9CB310A044
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487AF3E3D84;
	Thu, 19 Mar 2026 15:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HqKQ4V/2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WSptUpWv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0DD3E1D0C
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933330; cv=none; b=BFQrrsJnp2v7WpygPnlaFeclvmb3bLcnhp28PD2DVPJmzWuhxWhAlzfQRtJ88tpOYhGRp5UEyf4IzZYVo07RimCmqoxaazCti4M47c1+GEXaYHB3Z+HzyIwn5oQS/FUPcDRObFcb0wpsE6q8idBTs22BuGGHey+xklgEbynsbso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933330; c=relaxed/simple;
	bh=l8I+HYNZmeocp/EG5VW1lpnnGyMXf5q5p6pBqnP8+q4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HN6MyPHTOioqgzV845TfH2X/I3aH+Po8BLOb3TrS5b7OX5fn/+MdXbKLnqCG72topJtcFPmKEx1Q1R9JzZlfaPN0f3rxpc2I5/O09ZClrqr6ZJ1PvQDaLITYZlIql0DHcFOthTA1IK69Jv1RmRQwbs48mqDqeWRJxUwMTmnls6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HqKQ4V/2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WSptUpWv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73uuW3771092
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VeanyCMGjKLtH6S0laPIJjiqzwcazA6nYx+WuUDg1BQ=; b=HqKQ4V/2SwUvKujK
	XJZYi2ArqiCNZUiIj0FQyVKC03PYxTPZP6tcz20vRD5naX5aV0cn6Mg8AUzqN4Pf
	Ibk+uxnmtjsIzt0kZ5UpoChC9iflcI9NJmKyMkOdgwbdGzLhAf3ENlYCdRPn1a8n
	oK0ncp7Q8FhqgwSxLbdpKfL14DKwLDuQXg4u3lvFdXnDOQBZ51s7avjskgoV+di7
	k5qwgmafWSsgMa/85I4pUgrKJi8nJRRwkptQHCKiqZ4HRoNz85WjLdGj7xAh4Lhf
	BtQ2Qj0ff0PBkJmzq+mFBp/MMyf+hNTWyw6G0YI8gzjIx5wc6UzbS9xlJIgE210/
	kosv+A==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d083ra7fd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:24 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-94ea8c27188so7079197241.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773933324; x=1774538124; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VeanyCMGjKLtH6S0laPIJjiqzwcazA6nYx+WuUDg1BQ=;
        b=WSptUpWv6cnIjfWnCL3GyMC5tdwVQfbnJcEje/avL34TFjHycLS+yxaGYV/JgEZdc4
         /6prwFkKjj315piSskOWnkHsz3bOUidkqatEDxu92hmk6oz7p04Bi3AM7QiKKfFgTOH/
         65viwiN7NG+P89Pp7phxRX6zsTjiSuffhGfa+Sf/ibAAZOXMYWh3nS9l7r1KCjXE90p/
         tp3kytXZJ3M8q2GNS3ino5nlmm2YI6XgA4N4XrYmG3exVkyXfyqVQ0kWwVwiRco1ljxl
         E3PF3YhbfplKYDgy8zoVcFHEYYQFselTnays2BzVnp1qO9DcdunmSQA4CmQIzKwGUbSG
         vARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773933324; x=1774538124;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VeanyCMGjKLtH6S0laPIJjiqzwcazA6nYx+WuUDg1BQ=;
        b=RHYN6EPX1yJFSLvoY+r6Ae1RtU20OSgAHnPz61Gg/Jh1bfKenFJIJMpn1+fX7jhsgd
         PEjhciOnl+fB9E+HRIf+CdMHa9rozqDPUlyAaLfwP49wFp2ZK5gECVQ2bw2EaKzSSeV8
         49VhJYTi/+evYmpHCwzQfjbyLAreAIaXen4rAHYP/AMxVGBL6ghijIhwvZTTQe1bdV59
         n5eKSndmVj6kpWTq53zotP/McLUDklRcwoHuMbGvZDBhvlVu0/Ctip9d0NwQKM/GW59r
         cnFjoFqXxMLV0OCjCPGRkzV0V92V4C/Ned/nA190ZbMGTyiPPcZxdiYVI+QBPfCa7oni
         /T3g==
X-Forwarded-Encrypted: i=1; AJvYcCXie0n3W6t4QRsN/WZCzRvYYCfqS2A2oh7ORnVOlmZTCWiz5nsNiMFGKlQ1HBePYeGaJFaTcDoJ2+W0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2WEJPVHAY+wnwi1Es8wAHqfIpfCm/YYDnPlOZ2zipDJi3lrZA
	+QzJD18TZk6kRk6fBUxZKV7a7Mmb8fJAElogqNrcnDXSUspVA3I9louBWS76xlBUYLpQUgYgH+S
	5Q+B9CgBwY17rMPOUghyeUHUglKgDTNEYhYgZrXxCJ0MrNbDqj1e2YPNxlh7ddUxy
X-Gm-Gg: ATEYQzwcM5gLDgZJqHxTPBqsp97TXamcd4gUSIV9aa7kiSgIAPozMgmdUab/UCw4BsD
	o58yFLhDc65KhhOtP6N5v6j1njHWdg+NiQ/BrU95evICloTzdcS/dxpolo/zgiobZaAPZbQ83fB
	Erd7/LBNmJOjtuP8i9WG6DGM6/nTZUMHHqF3AKCzCjw10nbt0zbXeyU1gB6U1kxY7Dc7ILH2BkE
	MtY5xMRRaDz7q3AdkZIyhIVIHQsxc735z/Pt4ZL3fYAyq8Y1koAltgN6dvNPl5QkD7oXuMCwJBT
	ZrsH+qbNsrpgHI19uaEQ+acQ4amdDXnVQdoREmCmj+36FS/A9vvkrkrrx0wseXavZ0En7ds37FE
	SPQYB/lOvZl1Y/LSq/VP1n+D8mvg=
X-Received: by 2002:a05:6102:2909:b0:602:98a4:3395 with SMTP id ada2fe7eead31-60298a43444mr1812802137.30.1773933323470;
        Thu, 19 Mar 2026 08:15:23 -0700 (PDT)
X-Received: by 2002:a05:6102:2909:b0:602:98a4:3395 with SMTP id ada2fe7eead31-60298a43444mr1812784137.30.1773933322787;
        Thu, 19 Mar 2026 08:15:22 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4e48ad5sm196652865e9.1.2026.03.19.08.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:15:21 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 17:15:14 +0200
Subject: [PATCH v6 1/2] arm64: dts: qcom: glymur: Describe display-related
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-dts-qcom-glymur-crd-add-edp-v6-1-f582e87ec874@oss.qualcomm.com>
References: <20260319-dts-qcom-glymur-crd-add-edp-v6-0-f582e87ec874@oss.qualcomm.com>
In-Reply-To: <20260319-dts-qcom-glymur-crd-add-edp-v6-0-f582e87ec874@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=14242;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=al7iycL0ZpnGsXZYahkn1ngM5kjgBB2Joz3H5zN90tA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvBMEA6JZuwfmFKh2Rk62JYVNuQ54E5aWGokNl
 b4hN2cglcuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabwTBAAKCRAbX0TJAJUV
 VkmDEACjleCqdOz75NbA64F7pn84au2USa4ScN0rNzlYN5/jsKIqnV2WkkeTR/nkHnruT9dY7CF
 RwELLylBVhqdcmckkCBk2gaWM7olQEeMO5U7b1FuTYKr5za2VMjQN8KCjJtY9UB9lyF8M5og4eT
 RgN8lYnuENANZGDssVOpksevUWvBAIxCQCklGB9dFb1XdGKjDYpZHjgM/Z9JtnhJxYkeuKoiZYS
 PS0E//3hqa90Va6GTzI2UlzLomtmvo6MpldVTm1MY2hJRm4RK2gsjeGdqyNRdfXaroXasuz5S9p
 AGogiPN+lS2RRN5qvA2BrngybvbUlD4ZeE7e7tFrUM5HlH0BZXQ28UAXuvtQxMWEHN5sepbDtDA
 bldHfKiKIXNbiF7n22vhLZTmqKqKEQQIjkLyCzD2jDQWE8pyVcchDVRph91tgy83rxJ80TC2rj4
 GP6hfVtsCo703cGzF3RQ6Jye5W5+qO55wSaRS26rI3EjzXkzXZd/0+RhuHs8ciUUAoGy2MNGZ6q
 t0X6Y4EOlbKRH92ZtOpGKjXKdK24q9rYPR6f/eJYijeL5fuUuKp6b1UUFETUxAIl44FpgJohpr9
 HQ/+5qCz9suwn6jB0veaVFNaauBDU1h2PW1VyzeJLor57Y8dGMlPPWtoFUlGypIJmKZP9iKKTHP
 wtrC4v9Fy8Z+J3w==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: tzSNSqmu5NYaqydwK5WzdygUCsDKnGzZ
X-Proofpoint-ORIG-GUID: tzSNSqmu5NYaqydwK5WzdygUCsDKnGzZ
X-Authority-Analysis: v=2.4 cv=ApTjHe9P c=1 sm=1 tr=0 ts=69bc130c cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Nt3j2eaCHLMPKZ4rhccA:9
 a=Y4kR1PUZdprbdErl:21 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEyMCBTYWx0ZWRfX90l7onNQHrnY
 MrdM+oZIy+ZmADsmiPbHUVmXZf/3SEn8U1MZFi0TNYUfsPFL67w7+BrIrEqIRJmiw/sb/ZFiyx3
 St31ScR3c+pHZVzJnPJr1R9nzkPKUHmh5Uwmtggmoc0GtnKAcfIA6Z5A5gEjc7hEvbGuhgHAQxV
 wpSiNV0Jmf72hg3GcS2YSJRcMRJzydG2G949m1tZAiWB2qSBG1r5Zn5eMIPFFOkxcWGbDM9Efh/
 pDnGDo0lawIKxpaBBL3/s5wV8GlGQWn6lLBq3yDaME4SztBVBJETzdBZzyveFcXuKUq6nU9192V
 LHzBS70zisnbLplN1xgUOzaVr4m1LyuayfKeIocEvaK9Sf1xQYy8czM4NVKPrLmnv/5wjH4hLTo
 T35X38KISezA9QTO0gIOEp9zUi6uTXGugus4Xk/jxwFhtbvtqA0G34RfOXccYdppl71RFWPrJ1S
 SV2M69V9a7oUgeXFmMg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190120
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-277845-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3240B2CDA4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Abel Vesa <abel.vesa@linaro.org>

The MDSS (Mobile Display SubSystem) on Glymur provides four DisplayPort
controllers. Describe them together with the display controller and eDP
PHY. Also add the combo PHY link and vco_div clocks to the display clock
controller, and connect the PHYs and DP endpoints in the graph.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 466 ++++++++++++++++++++++++++++++++++-
 1 file changed, 458 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 2aa9af8c96ce..20cc512585f0 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -2367,6 +2367,28 @@ usb_mp_qmpphy1: phy@fa5000 {
 			status = "disabled";
 		};
 
+		mdss_dp3_phy: phy@faac00 {
+			compatible = "qcom,glymur-dp-phy";
+			reg = <0x0 0x00faac00 0x0 0x1d0>,
+			      <0x0 0x00faa400 0x0 0x128>,
+			      <0x0 0x00faa800 0x0 0x128>,
+			      <0x0 0x00faa000 0x0 0x358>;
+
+			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref";
+
+			power-domains = <&rpmhpd RPMHPD_MX>;
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		usb_0_hsphy: phy@fd3000 {
 			compatible = "qcom,glymur-m31-eusb2-phy",
 				     "qcom,sm8750-m31-eusb2-phy";
@@ -2434,6 +2456,7 @@ port@2 {
 					reg = <2>;
 
 					usb_dp_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp0_out>;
 					};
 				};
 			};
@@ -2507,6 +2530,7 @@ port@2 {
 					reg = <2>;
 
 					usb_1_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp1_out>;
 					};
 				};
 			};
@@ -3683,6 +3707,7 @@ port@2 {
 					reg = <2>;
 
 					usb_2_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp2_out>;
 					};
 				};
 			};
@@ -4047,20 +4072,445 @@ usb_mp: usb@a400000 {
 			status = "disabled";
 		};
 
+		mdss: display-subsystem@ae00000 {
+			compatible = "qcom,glymur-mdss";
+			reg = <0x0 0x0ae00000 0x0 0x1000>;
+			reg-names = "mdss";
+
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&gcc GCC_DISP_HF_AXI_CLK>,
+				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
+
+			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+
+			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
+
+			power-domains = <&dispcc DISP_CC_MDSS_CORE_GDSC>;
+
+			iommus = <&apps_smmu 0x1de0 0x2>;
+
+			interrupt-controller;
+			#interrupt-cells = <1>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			mdss_mdp: display-controller@ae01000 {
+				compatible = "qcom,glymur-dpu";
+				reg = <0x0 0x0ae01000 0x0 0x93000>,
+				      <0x0 0x0aeb0000 0x0 0x3000>;
+				reg-names = "mdp",
+					    "vbif";
+
+				interrupts-extended = <&mdss 0>;
+
+				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
+					 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+				clock-names = "nrt_bus",
+					      "iface",
+					      "lut",
+					      "core",
+					      "vsync";
+
+				operating-points-v2 = <&mdp_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						dpu_intf0_out: endpoint {
+							remote-endpoint = <&mdss_dp0_in>;
+						};
+					};
+
+					port@4 {
+						reg = <4>;
+
+						mdss_intf4_out: endpoint {
+							remote-endpoint = <&mdss_dp1_in>;
+						};
+					};
+
+					port@5 {
+						reg = <5>;
+
+						mdss_intf5_out: endpoint {
+							remote-endpoint = <&mdss_dp3_in>;
+						};
+					};
+
+					port@6 {
+						reg = <6>;
+
+						mdss_intf6_out: endpoint {
+							remote-endpoint = <&mdss_dp2_in>;
+						};
+					};
+				};
+
+				mdp_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-156000000 {
+						opp-hz = /bits/ 64 <156000000>;
+						required-opps = <&rpmhpd_opp_low_svs_d1>;
+					};
+
+					opp-205000000 {
+						opp-hz = /bits/ 64 <205000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-337000000 {
+						opp-hz = /bits/ 64 <337000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-417000000 {
+						opp-hz = /bits/ 64 <417000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-532000000 {
+						opp-hz = /bits/ 64 <532000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+
+					opp-600000000 {
+						opp-hz = /bits/ 64 <600000000>;
+						required-opps = <&rpmhpd_opp_nom_l1>;
+					};
+
+					opp-660000000 {
+						opp-hz = /bits/ 64 <660000000>;
+						required-opps = <&rpmhpd_opp_turbo>;
+					};
+
+					opp-717000000 {
+						opp-hz = /bits/ 64 <717000000>;
+						required-opps = <&rpmhpd_opp_turbo_l1>;
+					};
+				};
+			};
+
+			mdss_dp0: displayport-controller@af54000 {
+				compatible = "qcom,glymur-dp";
+				reg = <0x0 0xaf54000 0x0 0x200>,
+				      <0x0 0xaf54200 0x0 0x200>,
+				      <0x0 0xaf55000 0x0 0xc00>,
+				      <0x0 0xaf56000 0x0 0x400>,
+				      <0x0 0xaf57000 0x0 0x400>,
+				      <0x0 0xaf58000 0x0 0x400>,
+				      <0x0 0xaf59000 0x0 0x400>,
+				      <0x0 0xaf5a000 0x0 0x600>,
+				      <0x0 0xaf5b000 0x0 0x600>;
+
+				interrupts-extended = <&mdss 12>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel",
+					      "stream_1_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&usb_0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+							 <&usb_0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb_0_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dp0_in: endpoint {
+							remote-endpoint = <&dpu_intf0_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp0_out: endpoint {
+							remote-endpoint = <&usb_dp_qmpphy_dp_in>;
+						};
+					};
+				};
+
+				mdss_dp0_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-270000000 {
+						opp-hz = /bits/ 64 <270000000>;
+						required-opps = <&rpmhpd_opp_low_svs>;
+					};
+
+					opp-540000000 {
+						opp-hz = /bits/ 64 <540000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+
+					opp-675000000 {
+						opp-hz = /bits/ 64 <675000000>;
+						required-opps = <&rpmhpd_opp_svs_l1>;
+					};
+
+					opp-810000000 {
+						opp-hz = /bits/ 64 <810000000>;
+						required-opps = <&rpmhpd_opp_nom>;
+					};
+				};
+			};
+
+			mdss_dp1: displayport-controller@af5c000 {
+				compatible = "qcom,glymur-dp";
+				reg = <0x0 0xaf5c000 0x0 0x200>,
+				      <0x0 0xaf5c200 0x0 0x200>,
+				      <0x0 0xaf5d000 0x0 0xc00>,
+				      <0x0 0xaf5e000 0x0 0x400>,
+				      <0x0 0xaf5f000 0x0 0x400>,
+				      <0x0 0xaf60000 0x0 0x400>,
+				      <0x0 0xaf61000 0x0 0x400>,
+				      <0x0 0xaf62000 0x0 0x600>,
+				      <0x0 0xaf63000 0x0 0x600>;
+
+				interrupts-extended = <&mdss 13>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_PIXEL1_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel",
+					      "stream_1_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dp1_in: endpoint {
+							remote-endpoint = <&mdss_intf4_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp1_out: endpoint {
+							remote-endpoint = <&usb_1_qmpphy_dp_in>;
+						};
+					};
+				};
+			};
+
+			mdss_dp2: displayport-controller@af64000 {
+				compatible = "qcom,glymur-dp";
+				reg = <0x0 0x0af64000 0x0 0x200>,
+				      <0x0 0x0af64200 0x0 0x200>,
+				      <0x0 0x0af65000 0x0 0xc00>,
+				      <0x0 0x0af66000 0x0 0x400>,
+				      <0x0 0x0af67000 0x0 0x400>,
+				      <0x0 0x0af68000 0x0 0x400>,
+				      <0x0 0x0af69000 0x0 0x400>,
+				      <0x0 0x0af6a000 0x0 0x600>,
+				      <0x0 0x0af6b000 0x0 0x600>;
+
+				interrupts-extended = <&mdss 14>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_PIXEL1_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel",
+					      "stream_1_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX2_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX2_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&usb_2_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_2_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+							 <&usb_2_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&usb_2_qmpphy QMP_USB43DP_DP_PHY>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						mdss_dp2_in: endpoint {
+							remote-endpoint = <&mdss_intf6_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp2_out: endpoint {
+							remote-endpoint = <&usb_2_qmpphy_dp_in>;
+						};
+					};
+				};
+			};
+
+			mdss_dp3: displayport-controller@af6c000 {
+				compatible = "qcom,glymur-dp";
+				reg = <0x0 0x0af6c000 0x0 0x200>,
+				      <0x0 0x0af6c200 0x0 0x200>,
+				      <0x0 0x0af6d000 0x0 0xc00>,
+				      <0x0 0x0af6e000 0x0 0x400>,
+				      <0x0 0x0af6f000 0x0 0x400>,
+				      <0x0 0x0af70000 0x0 0x400>,
+				      <0x0 0x0af71000 0x0 0x400>,
+				      <0x0 0x0af72000 0x0 0x600>,
+				      <0x0 0x0af73000 0x0 0x600>;
+
+				interrupts-extended = <&mdss 15>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_LINK_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_LINK_INTF_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX3_PIXEL0_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel";
+
+				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX3_LINK_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX3_PIXEL0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dp3_phy 0>,
+							 <&mdss_dp3_phy 1>;
+
+				operating-points-v2 = <&mdss_dp0_opp_table>;
+
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+				phys = <&mdss_dp3_phy>;
+				phy-names = "dp";
+
+				#sound-dai-cells = <0>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_dp3_in: endpoint {
+							remote-endpoint = <&mdss_intf5_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_dp3_out: endpoint {
+						};
+					};
+				};
+			};
+		};
 
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,glymur-dispcc";
 			reg = <0x0 0x0af00000 0x0 0x20000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
-				 <0>, /* dp0 */
-				 <0>,
-				 <0>, /* dp1 */
-				 <0>,
-				 <0>, /* dp2 */
-				 <0>,
-				 <0>, /* dp3 */
-				 <0>,
+				 <&usb_0_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp0 */
+				 <&usb_0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp1 */
+				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <&usb_2_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp2 */
+				 <&usb_2_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+				 <&mdss_dp3_phy 0>, /* dp3 */
+				 <&mdss_dp3_phy 1>,
 				 <0>, /* dsi0 */
 				 <0>,
 				 <0>, /* dsi1 */

-- 
2.48.1


