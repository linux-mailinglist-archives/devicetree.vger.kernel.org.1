Return-Path: <devicetree+bounces-248156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 97451CCF434
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E37AE3078381
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155773009F7;
	Fri, 19 Dec 2025 10:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SMMTDI/l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cMS6zNlD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748282FFFB2
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766138452; cv=none; b=jbbvgcASLf+AAmI0+DUcdRFro5afYIUeWl5430XPJn3e7grNySZ5Lp5zFvrhlQFzI7CfB07N7enU5+4phbgg1mjNE6A8oYg9mWB0OQg56bqUsYzCYQ21TBjQOOlzD62DEO1570qY/P5XF1kiS+0JSQ/m9NYh7tyGGPuKksZMIg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766138452; c=relaxed/simple;
	bh=jfBdozrJCqq1xPSefv3D9/3EIiDo3xbbCnISBzwCQjg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rSSHIv+K5kS8BLNXB64GobV2CNDA45rl6M1SeXArYdDv4s+Ki+pUW5op84CY7duqMPY/6Ou7kt4RFLs2+JG/Z3V5Sp6ymGOMcWw67G5nULYOx2jkyXV0F0YVPu0F+Kf1RoMP/pxwQCUi/AI8hJYOpTuYcWcJOyGHPg9LK9w428I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SMMTDI/l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cMS6zNlD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4c66r3999336
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M0t0lAgDoMu0vZ3qvwSdn9GRCMh13Jv+nIxjO2gvrUQ=; b=SMMTDI/l4ok8umcR
	1PPNnDOrBLrTxDCqWrQUlNaHnVKBatMZKN9RzcmE9SMGqkAXxjPpjWRcfCyDJ0rS
	G3s4nsTMIS0vAN24Sm9bw3TQmiMWCsvVBhcLLIAFDbXd/WYEbZnYhnzeVdV/UBGY
	c5HmibmE78L52shhaOnKtaSem1+HgxymNDK2cHGkZgm1qClcIHTQALoJjujcwzQD
	V7GY/rC4Nn32S831Hc06Ykj4P90g5TTvGg+zL7FmCxEQp6PsW725F58SwA2TgHNE
	ON/MPXn8yxzMyEUQWbbqSjbDrrv/uXvewT7T3Q6PDrPvdVuQIV0esQ00r8nSTVMo
	77nSAQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r29j8j2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 10:00:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee16731ceaso29343371cf.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 02:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766138448; x=1766743248; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M0t0lAgDoMu0vZ3qvwSdn9GRCMh13Jv+nIxjO2gvrUQ=;
        b=cMS6zNlDZ6xr8+HNeC/s6sZhwZ37wyW7K525dIZFa0GPFmR4HNjGYm4rhzXOdp1c6S
         LB+/lr9o2hULciZqINnZctIZKEnn1x4eVWih9qmiM3TynBtoSEmcdBxoWpSUFNlBz5fx
         r8X3IR69fo6udfigWjiZIusmTw1C/scPsvnzVN2drKyoEcamDvB7ihIA85+539u9+6c5
         ORb7UUbPJUSjlkQQrfxvz1IfSCHMKPmRUdhJtmkJrVgA+ab/1euIW0jQgu7WtZgj9pX2
         oG+arWaUKHNR8gS9NB2wP8EIqK6Rrm7mIcNHpz3uhcZvcrp2mIpyLaPXQu2uooLatQX4
         3UaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766138448; x=1766743248;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M0t0lAgDoMu0vZ3qvwSdn9GRCMh13Jv+nIxjO2gvrUQ=;
        b=bgvh3NNchM5QF45uTz6VI3R9zI/3GpX++DIp/nTsDp68ceKaF6P3l81/duNIh0H4d0
         dxUF7sFcaUdehNT94Ha5MbN7lNxdHKQ1zSYN9UjyWp6NH7DcaxkWO7HJaVjInTW0ZL9N
         Z9Ew0hUxu5j1P0N6RsNpfn+/tV52+IGQHLCN2TN+Dg4Gq2ob4HH5Mfo5HCnPXvSL7WdL
         JF5j2J43Z/KLNBcC6Zl5ilf5s0yRnVNKnIpccBMyzKRlHyiBPAZ6woCc8vfcYCWSUBxH
         pKVRMG8/xInHuOnNwZJGWOboMJW2LPDeQRhKYfMAuF6Sp63b9Kkp1Eo7M+bdWv67jTpA
         hHmw==
X-Forwarded-Encrypted: i=1; AJvYcCUoxA/RvqI3Njv4LoZp3DgDaK+MqJqXWNyApe7esmKfERWLrlO6AuMPzYzct8M8xmw5pwiA0tpQ9K0p@vger.kernel.org
X-Gm-Message-State: AOJu0YxdUOVhFtTh7+y/PJQx1ifQARgWA75V5sYFfa8SoBi0VIqsXelB
	lJifKZjgkFK/REAoYut/FEkRW9CxPsRtnTfAD4XFnJAmhw5hbAuHVIc9Oc5MfymFTNlzy8Ev3rs
	FFSIzfqEQ4pLyt+5iB0vy+REVXYtqdJjgb0f0wpc8sAFxMREmvpFWKCH9YkpIYZ+1
X-Gm-Gg: AY/fxX5ZvsDHxEOuI7zByPnAHdrb/IfXNbDccljtm/K+QyWvNCsWySEU6rChziL3eng
	dJKuOsKQYJgfSetQBywablb2r+KxqrGPIApsIy7mucXVPw9GHi+Ubk6kRXgDcAat8iJI4Ot2TfI
	tII5asRegcCaZxBKz1mu5JveGItCvZxKW8LqZ5UvWn7Uc2jHHdaSBmhkR3fEdHK8qNDliC4Kjzv
	MERen19Jfz5JG2gzR70yDCXkk6ZUoG6B18aXElXj4ODEpmI7esZsZjNdwAZ81xligCflhk5I2wc
	pvIDLeb91pPBPUXIGDP4K9ailTZwfsmgVZxmpnr93k/27nkPZQlBizltoTNnQGpy1GEgUr7TcBK
	C4cPTOsG0h6Q517w=
X-Received: by 2002:a05:622a:1826:b0:4f1:c698:6e9e with SMTP id d75a77b69052e-4f4abcf1325mr30832161cf.27.1766138448306;
        Fri, 19 Dec 2025 02:00:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcaBHubuTxPSQ6pPl2hynSeql5WWqwtCsuKEASq2ZnOG+HKVn8ZCNteufeRh3ZN7plono87Q==
X-Received: by 2002:a05:622a:1826:b0:4f1:c698:6e9e with SMTP id d75a77b69052e-4f4abcf1325mr30831461cf.27.1766138447704;
        Fri, 19 Dec 2025 02:00:47 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830f3sm4106563f8f.22.2025.12.19.02.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 02:00:47 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 12:00:29 +0200
Subject: [PATCH v2 2/3] arm64: dts: qcom: hamoa: Add the APSS watchdog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-2-fdfc6ba663e6@oss.qualcomm.com>
References: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
In-Reply-To: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1155;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=jfBdozrJCqq1xPSefv3D9/3EIiDo3xbbCnISBzwCQjg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpRSJHkguFuTlnmg9dNW4nQ+9zLCD3YIoqz5mRk
 eMZOhqFUdyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUUiRwAKCRAbX0TJAJUV
 Vif9D/0QjkhGwIiGapebTSU4Z5ne0d8a5++zSccsAw3NdVHqYC4LLLLJ/SKNPyG/o9UwJDHo9XI
 b+LFS8suw+oqiymWAw3VtVqEhK5Z9wouUk9yCBezqFChlQSnG1ilCAYKlx+JHpYdBTVbivoTK8k
 zl2+82cLxzeDBKZcdJrYP/xvPTM649rwLONu4fIO5wIWIY/J22ZACB5Krwwu0VR4gZLUR9rE1su
 vuKefY00dYd4LUUZP8FdzW+YJzlIreMFMIr25IzbcEjif1QxYlmoIF+P0yZ/4VET1l7TWOMPf9H
 f8dn4pvPzPfsYXPsiX4KyP7JUh4xc08ixNZ8E72+wpLygHPwOLs9E//kfhMbrMygKDKEQ7bz/nY
 FXDFYrDc6gQ2njGkSlyonlgw7YMtmGuWoZ11rQhEQK+P7CRvSWyniv6jJJWu/39jHUqpTJN6My+
 xyvGIWa9FYeL5tsHcmWVj51EBvDOyqLAZ80xa4X0PyaurgHJhaiKrO1Cc//OnxEc4nwdQXQvcSs
 wODaePBetoQwV3X89MqKKwW04i7vdJdjpWzSrJi//44Mfv+r0W9LjgTSz5HGD6lnaUTopAdDgj8
 21l90Bz5LaXmw/Dai53NkDQiiJdpR5JdRm5gs7eDmqjlIIDQ67BbowDSH0eQh5WxHIviFOGFrs+
 PyQJE47aXu/b6Ng==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=P6c3RyAu c=1 sm=1 tr=0 ts=69452251 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bM2Go8iWHfDejGH1_8QA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: gi-nePxv3nfnR-fQmCzukGHK67-4k2ID
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA4MiBTYWx0ZWRfX4yN78I3PFmpq
 AwfmjoJZx5RXeoPJ1bIIaif5yJ6dT14szZNA4jSZb4iZdoZ/KqVQdAubBGdL4F2fj+npMPZM2hX
 9v9WjeZxTF1Na207g+FBCegDgLUhzLQHKaHGXT0NqcFRZ8weTaxNy0LfCoffMeNBTWazTtj1S7P
 alNQ7SI7lp+v0eRADEzOzhOiaN/51peJImzoc5K/AVS3MV9caCWssuU+tvM9Z1wksw5CDLGWulI
 DQjehG4HipAzsuY0i/1eMwutdAu7jC39+ZVRlXFVHygqFnqH2HysUHL6xz53Z+vXV6qW2uSeuGS
 w1lL8zQJ0K899mwGLYuY1YazpTAKuaEDdUZvYhQ2MIC2DJStKySNPHy/20uY3gjqVDumL6pmWUz
 HBkyeHhHNcE5eMhKi8N4oYGyKlTzsraMaESLC5L/XAtqH5YDerb2wlIxQd8S1odCmiWF63XSrNR
 miq2SupzuquQlOSA40A==
X-Proofpoint-GUID: gi-nePxv3nfnR-fQmCzukGHK67-4k2ID
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190082

The watchdog support in EL1 is SBSA compliant, handled by Gunyah
hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
block, same as older platforms. So describe the APSS WDT node and mark
it as reserved, as it will only be enabled in EL2 overlay.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20..b65dfad71c2f 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -8302,6 +8302,14 @@ gic_its: msi-controller@17040000 {
 			};
 		};
 
+		apss_watchdog: watchdog@17410000 {
+			compatible = "qcom,apss-wdt-x1e80100", "qcom,kpss-wdt";
+			reg = <0x0 0x17410000 0x0 0x1000>;
+			clocks = <&sleep_clk>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
+			status = "reserved"; /* Accessible in EL2 only */
+		};
+
 		cpucp_mbox: mailbox@17430000 {
 			compatible = "qcom,x1e80100-cpucp-mbox";
 			reg = <0 0x17430000 0 0x10000>, <0 0x18830000 0 0x10000>;

-- 
2.48.1


