Return-Path: <devicetree+bounces-254650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29082D1A5FC
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 488A03054984
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB084314A7D;
	Tue, 13 Jan 2026 16:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C9Q4NCOS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="etpjkPOm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F768313282
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768322527; cv=none; b=olJShiQOASIgSbpJtaM1bvyn+L6HQoOu2S5yxAytFsj/VZ7uPha9VUoq3Q6RYgtBRqqMD1qZNUxkO46CxanMi98VihjKNZS/zYhooDG0MyiVsfcqDzCdq5c/BNDOWQKUciWpSQDqbrVMpkAdXLYknPuSbo3kLfGbtj6+inMEXDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768322527; c=relaxed/simple;
	bh=ywbYf8FpXZsSTvjHvak3d1a6oaK/ZzP1fkPgmQF4ut0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=CTJZUvYDDPPI//Z8tEiG+vtkaARPaLt4BsLoq+tw3x97vBBcpWBTq1gLX3VK/oy3vUBHCh8Wli+w9yBe6asBHBs93Oai0+VdACh79wnzbL14rFh852vDuGor3EsSYne1pd+z4ZhGKy3ZfyckldbyeHf95D1WFZ0RTehajF1LdXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C9Q4NCOS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=etpjkPOm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DCqkcu3735288
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:42:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7LX7ASpW6leCuOxrRq8giJ
	H0WRmRK7eH7bwiYJmlR1U=; b=C9Q4NCOSbaiBSP9ELx1mnGgcsvVmef73HQrmNV
	asaSXMmQer1VlhvfJ1muV9KOOpfrU05/MLtwxclziOZ2Ex5decoYUEmY1/fDBtqy
	EsOevC3eOGyfNbcQ6NE3WTiE9Do43SJrY24JqHhKTmlJR1f+7aViKFD8KEti80ne
	hAvyVgpS59U4FgCN99Q2dk/WIZcMz8wpqXcpmGVPDc762n1G08zS2asp0pUelBk8
	oKsIaOGywjUAcHwCebqSPb2TDuunRIgzvPnX7mQyLO03Y5xI/RcZDH5uRqjU7zAr
	GlBmQXA+BKLGh3K/xkIyawbmV+zrt43fOXe3p+fmBFZiYSNQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng87a1uh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:42:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b6963d163eso1964788085a.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:42:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768322525; x=1768927325; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7LX7ASpW6leCuOxrRq8giJH0WRmRK7eH7bwiYJmlR1U=;
        b=etpjkPOmuAYyx0tKfgJvbNtvqOcKt2LElQlErdnmSF/gGUVZPxIQuE4Mlul8akYkPq
         c2avGD0ZBtbF0JxKFU9WJllovZB4e6z6k4lt9hj21I8iURjhsOmU+FDDLxas+ArOigf9
         actDiVO/Cc39rSQf4l80xzH64firqQD7e0kIjzP6E8vAwI+MTxQ0x+Sr78btxLIiMEdN
         CCOze1C7gObbJES8vkr6qFwmo+Nt7tsZvFUvOAFp4x8dAbnHD68Hmf5Kk36BGrGKgTR9
         Z93dXLKVuvtHKILom7wlJ3+Rjs/5jAJM/vaAosKmtD/NRS46EMUE6nTI0q9ztOXkbpj9
         HpMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768322525; x=1768927325;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7LX7ASpW6leCuOxrRq8giJH0WRmRK7eH7bwiYJmlR1U=;
        b=W7pSU94PMITQY2k0eqC7lETIeceFXpaQyGW9nRD89kvHh6FFu+TlAqbuEw3vwP/RhK
         w1it/C339uSR/QZLAzW8yFvDgTZVMcOdmVf1hyhw2Wr3UPV8QQZsqXi7Ry8zwSLdpBxm
         82wyB7JDaMYp8nG/BiSDim0eGF9hmoUpZk7ge/iAQpsh/3OoQswN9JCxMbpK02gXt/w1
         88WMqRWKoA0JAZ1qYPJdiZnI89uPKGT+Jmxvo+gABmDEvExOU5vXY2srSET5v6v2DDPw
         Mp6XGXOEiMFRmUTL1x6DRKHoVYi0LA6NwGp/Wqk75t2KZi372hAX13JQWFjAU9Nfi3qg
         3/Ug==
X-Forwarded-Encrypted: i=1; AJvYcCVusKe1W8v9jN23PVc04VjGvDH9sQDNHbgMtb/sM0VqjJAqF4v8aG9hlivCo89U7fmsSxSGXzEdtw2i@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ3gi6zK3hskrzFuuqhNem3ouz3Z3rekM6spA+wur6a5HFJ0lN
	26DBL+gT5uAEV095DtQeSk7vizTq3QmHE5omvlrTgbaRwsxVetwiGqTXk5Qa1whmRSVl8Ha3qaB
	oMT3sZIAdmHwwbbJz3NfmtgKLh6WhajiCVJc9swvi8OV0IUoPtLNe8BzFRJOFBX8d
X-Gm-Gg: AY/fxX7G/8CwrPImUqnsIl7GqvSEiYvWMNzcaJ4aOl/im0QQ0RN4G0IK68ZF5YUWNB8
	Wofwq1Rt5aqx5F8u8dQXHfL0xjegvbNdG02YLvXxBvwLLoQH5WIzQBje1h1UsdcoXWtq4wRCr3x
	LBS5p4wS1NKZ+VoUiEU8uanQ8Y9g7aiYn6josrW2/yP8Gm/FFACqaeUd0toV0mz324kDnuGF++R
	GB8qIIVaoCfLM39JgxAFmDbPXwfzHVLJySyYko3slnD3WXQTDKVYDTSS/LRnH654oOj+lNsjqll
	XiSe+EPxymONbsWLLIZA00c98JUXEJLXyzvCoWRev55wOLuv8m83jahKh50YUF0sDOk/hqMEl0f
	uCheVSBJAxvUC/t6qpZM7b/aOjTqHoMB5Zagvym9JcqtvaCCWMdFjwK3vgUpRKaq0BWdleNKfA9
	IIKwxBvlIHYZTI/1AJMBicP3U=
X-Received: by 2002:a05:620a:198d:b0:8b2:e924:4db7 with SMTP id af79cd13be357-8c3893a9c5bmr3118492685a.40.1768322524563;
        Tue, 13 Jan 2026 08:42:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0af992hx5wBmcZk2Mln82jUPjel4zIx/9ZH4sZhi362Xd3XTINmL4wPa6lfOuekAjR4sQiQ==
X-Received: by 2002:a05:620a:198d:b0:8b2:e924:4db7 with SMTP id af79cd13be357-8c3893a9c5bmr3118488585a.40.1768322524010;
        Tue, 13 Jan 2026 08:42:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6b606408sm5367378e87.11.2026.01.13.08.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:42:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 18:41:59 +0200
Subject: [PATCH v2] arm64: dts: qcom: agatti: enable FastRPC on the ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-agatti-fastrpc-v2-1-b66870213f89@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANZ1ZmkC/3WMQQqDMBBFryKzbiQTpdCueo/iIkknOlCNzURpE
 e/e1H03H96H9zYQSkwC12qDRCsLx6mAOVXgBzv1pPhRGIw2Z43YKNvbnFkFKznNXlETqHVkjWs
 NFGlOFPh9BO9d4YElx/Q5+iv+3r+pFRUqMqgvugnBO7xFkfq12KeP41iXgW7f9y/jA8guswAAA
 A==
X-Change-ID: 20260113-agatti-fastrpc-e3fe4bea2b42
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1931;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ywbYf8FpXZsSTvjHvak3d1a6oaK/ZzP1fkPgmQF4ut0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpZnXasjfFMOUxo4BUyovCwXift+ztZBiq7CaMP
 MB+HWymfhqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaWZ12gAKCRCLPIo+Aiko
 1WzUCACIatwtBJKHxHAh7M5OkyZotIE+z59tXnCapkrr9lkbvtbO9ZQPTXeXidJylf4IUGIv5wY
 NmUTeWsCRjQQ0Zmn7oX0tymen8j+EfoDvHYsAhLW7eYd94Xpu4K5DJX6EtLk1c/naQjBLfEhl0N
 /2qe0lJ7HK6s8BBxmpdn51EbymSqD97U64yoetttsddGz0y60z+T8h/e8GVzxeB5Ipy0QLcAmGg
 QcsaOOW7XHxWxIJGQpS1+gBq93Z1PLUnv+A6BHN0fHt021RzS92ES1WI6B4vYBb6DP0KqLPrCSw
 AqYclb06Osfo7UdM3mfSB84f9iChX6Ohu989wa6cWI1nioxb
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEzOSBTYWx0ZWRfX7zXEP+jQxA8K
 3Q1g/rfsTq9A9f4i0xBs31Y2z73nRw+OP+pR8UKfYloeViqTVHWWelU5wLwHxlH1739R5CZrbFR
 aXIq+Zk6/xe85yjKeBU7pGdcIeHgRXzQPx+WNfuNrKqZp1EQopTMZZm/kHMzf/Kb8fv0t7Xmfa3
 GnbYZCctyFYSqixDfKRE1nebcKI4LmCLNc2ETWn+CJ9qlYX8/Iiayq9iuMyaUpp/FjFgKUfOC42
 yY+ri/tde6oCqMkdyv2cPdrsbcLy1Gulsw81JK1xmHg/h7ytoMrMef1+ZAlFJVpx7Wgu6wgkAAy
 zjaTIFNUmx8gcYVzgiCjOsM7yyrNnFOxnp4z4WLfZjqfXZLFsSTOoolVazos+EpXmrDAiYa1ONW
 Q2liGlhqtOePwoWb6XFikokHQJkTYOnSxNSVhykNLHqvWnjnHtCX/IKkIRVElwGXPNTrnaQ/J7x
 uIffHtDExV0R39tmsag==
X-Proofpoint-ORIG-GUID: EvuWMwPy5o6sk5jVIgQP2gkUbA-hqMuf
X-Authority-Analysis: v=2.4 cv=IOEPywvG c=1 sm=1 tr=0 ts=696675dd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=qnRtB28rPDfBZ8ych9EA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: EvuWMwPy5o6sk5jVIgQP2gkUbA-hqMuf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130139

On Agatti platform the ADSP provides FastRPC support. Add corresponding
device node, in order to be able to utilize the DSP offload from the
Linux side.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
- Add more FastRPC context banks (6, 7)
- Link to v1: https://lore.kernel.org/r/20260113-agatti-fastrpc-v1-1-e210903ffcb1@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/agatti.dtsi | 41 ++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
index 7815ece261ea..217d465df846 100644
--- a/arch/arm64/boot/dts/qcom/agatti.dtsi
+++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
@@ -2287,6 +2287,47 @@ q6routing: routing {
 						};
 					};
 				};
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+
+					qcom,non-secure-domain;
+
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1c3 0x0>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1c4 0x0>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1c5 0x0>;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x1c6 0x0>;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+						iommus = <&apps_smmu 0x1c7 0x0>;
+					};
+				};
 			};
 		};
 

---
base-commit: 0f853ca2a798ead9d24d39cad99b0966815c582a
change-id: 20260113-agatti-fastrpc-e3fe4bea2b42

Best regards,
-- 
With best wishes
Dmitry


