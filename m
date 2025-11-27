Return-Path: <devicetree+bounces-242653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6897FC8D9C7
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 148194E5C48
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 09:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7991D328B6F;
	Thu, 27 Nov 2025 09:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fyYQ+Jxb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G3I/Lr7p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F87322524
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 09:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764236648; cv=none; b=Jddrxi0cTHf6xYoKfBekxvHO4SHqS3goehWI4C7eUSefUg09ldwWzGmCqb6nvzPwBsggZ/PE+lFnTapZYJ/XC+J9wm4Ug5hG9OGhAngNdMcZOVewz8bQIkI9SrAbS/dk+mHQdxWPUPJ1c/ehUfVicleu7vcP7C45ycUIC9in2fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764236648; c=relaxed/simple;
	bh=rgcNCiRxdnXSE4KyK9BTo72/+F/pMdgGWPs0MxC6gQo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=s5JshnSConcoLSTsz1qgevdBmD3frF9YMWZ4jb10AUY89gzMYLSrTv2en4sRh4cbDiT7dDvHGcMXJU8gNoljWY1dEMqrmbg8if9eHrIMLuYBreEyIiqKBXrZaZ/bcVjqldpycE5jrLXf2TMCyl67Cc21xGOwXI+LNN7u8Zbe5r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fyYQ+Jxb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G3I/Lr7p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR8fFqF1700218
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 09:44:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=G0yr6suiarUZve/hKFnOGb
	Tg5k2/yELTDVerAw5I988=; b=fyYQ+JxbvcyTl/txdAl8M23JmDUpz2opUQNg/m
	lP6/2HVuN9UB450aLeH8789uvNkRGar5b6ILgkfdbcYHsHkvEweiEfXI8u6B1Ekb
	xOFjD6fpxxJUAIY+rts98jdRCqDxL4SmsMc+SBUSMtnbSP0qDlnGMmgdhRofohoX
	H8zfan1/V3UNi7rmiSjMTONM/oUn5ltQujxK2CmcLKRMvrGKi5RUo3XQMyojBhuo
	hnbdIsIDQ+vv0aXZ2JpOCMUZb8g5fwEyNas9/uwlPan+sMJyMfPGw6frJXO29npP
	SIzFdbjDzRGx/FWpo1CJzNClZDp2JNYu2B8P/MtiCWcMnDPQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap07a3agq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 09:44:04 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3436d81a532so1140260a91.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 01:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764236644; x=1764841444; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G0yr6suiarUZve/hKFnOGbTg5k2/yELTDVerAw5I988=;
        b=G3I/Lr7pzcYnBbvRYlNigx9gmIgmJ50uhNlvZGBLHLdzWbD+fQm5b37qI7vavGSN6J
         5y3MW79ImLIzii44zxzzn/Hh9L3ruhNKTF3C86HSJUUoURlruuHaZ3pkEETj0/vHF+S5
         Y+NdGWhbc4NXU6QCxWXpCcJcLqfkOyXbnx4mVC7HGscZjMtMo2cbUdy+BlS1TjlxQTNc
         zfivTZOpJ7PEm0gZROe3plBaKXPrRsJYSYru1fnB8ThCX+jz0Xg+CPWrjo21CQzUfNLH
         FnL3OpIwtLh4zho5P+hNsIVUUZy7nipifr+uUed/WtzLfcY51FO8lbK7Cd31yy17k3O+
         Fu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764236644; x=1764841444;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G0yr6suiarUZve/hKFnOGbTg5k2/yELTDVerAw5I988=;
        b=l1ViXsduXfS8gOvF3QQcY6rrzpyahvATnpQw6MX0MutWzdrcyHbbU5c+KSkKmo0RC2
         jI/3JfjP7HAtdM5z/96Bw/mXUCYxgAQjDGSd08lUDh2+IGKGPRZMllb+JysOjTry3td5
         nlIBUXo1HzEMSdkbRsXz0OF6Rlr/LIxs417ubMgrNtS5rJ3bq6zHRSuhTK+kbIQG75Gu
         fWEVkPsSwZFirdMB3Y4RTTRiLPRGZPNL0aCRJ4C9Sx8dytF5Xt4AILowy27M9wQkcYEi
         u0i2spUaDA9+1fMI7R3M03+eUqm1hvOnokMk+gBKurwNumYhQNyDA7m7qeEow1uEmO6y
         2lpw==
X-Forwarded-Encrypted: i=1; AJvYcCWk+gLyNXbAlqvZ9fVhj4X88TaDKpBsvRcwpxGG+k5lSGkynnB67bZ2TRWg5VpkbVprIZVBLYrYSZGJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwoEYjgTijw6eiZ5lSLjQg6YcUZww8dMWkI9zOctfvQpf/yP0Jb
	5sr3BFnvqAoCn2SYFfbvAaCF3EUcaqeoYSUq+bNsbgFyADgFIpQwU+0vZbKP7B8OkdKjCHgIjdD
	GX8rP24SNZVMjNfPCGuYMsk+6RK6q7CWyxYMHIynzGEo3kly3vu9TuIIWPnz0buYv
X-Gm-Gg: ASbGncvCDnQNWBRDO7QJavyQFdL5UoyTJZ5iAtkyGy29gkI8Az/h38JcqS3nJ8UA4Bl
	vMQKU6MHZEZecND0XfqEExXzNq16nh3jmYrmHmas76UiC6ek23NWKXETCVGVBZQrrZrNwYWZPxI
	irFkj8Wicv2lhptlp6E5etdyve2MfUxQT0D9fu0ZYMI2jW5J1EQ+g9oEMS/z3yCSJHqxduhhWR0
	T5BHGUokBYC9MZVb7j+u9YvCxbIsyzs/EtIKmhLGBj6eT6/RHkPebW63z6xPU+Qgi11eWNnX8k1
	i6EWg5R1qits6oqGKTAzgJFshHNNOScNzec/V4vPTY1ouqH+jTDfT3+UyjpbfN1HwsZeO3rSu10
	ZP7wneGbkHor+JrnmxKMymPAhlOBHOY+V8hc=
X-Received: by 2002:a17:90a:c2ce:b0:343:6c71:6d31 with SMTP id 98e67ed59e1d1-34733e93813mr22053552a91.11.1764236644146;
        Thu, 27 Nov 2025 01:44:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4PokER9ZIKbOOy+wWNEYanktaeMKRkdg/ap54snc6j0f9h3AGprhFZKLRhpx09LPhYb+/wA==
X-Received: by 2002:a17:90a:c2ce:b0:343:6c71:6d31 with SMTP id 98e67ed59e1d1-34733e93813mr22053530a91.11.1764236643616;
        Thu, 27 Nov 2025 01:44:03 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3475ff0eae4sm3887766a91.4.2025.11.27.01.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 01:44:03 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 15:13:55 +0530
Subject: [PATCH v3] arm64: dts: qcom: x1e80100: Add crypto engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-crypto_dt_node_x1e80100-v3-1-29722003fe83@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFodKGkC/x3MTQqAIBBA4avErBMcox+6SoSkTjUbDY0worsnL
 b/Few8kikwJxuqBSBcnDr6gqSuw++I3EuyKQUnVIqpe2HgfZ9Du1D440hlpkCilMNbgooamN20
 HpT4irZz/8zS/7weS988qaQAAAA==
X-Change-ID: 20251127-crypto_dt_node_x1e80100-bcb1a2837b56
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764236639; l=2343;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=rgcNCiRxdnXSE4KyK9BTo72/+F/pMdgGWPs0MxC6gQo=;
 b=6iG8aVxFP/faQB+G+sBsTb/Rl5Is8VlQMJebNYIxc1aTwe3bOwx8BvdcOhKqStKQGPdodU62+
 2a8DBc0f1DeC00+LI1lxyjsQrZc7c0X+pAu8NJjdGcy67RPVlK0lzTQ
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Authority-Analysis: v=2.4 cv=ZZEQ98VA c=1 sm=1 tr=0 ts=69281d64 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=dPaM2nV2qZi9JoseeaYA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: KnvIhd7XURvjqdqdH0SP-fe0T6u_ohK_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA3MCBTYWx0ZWRfX2tG0JWqEULh6
 xP225oHHyThKQCDlzV1Ll+YPA/gcFm1kd9CX7dqylhtsLE/n9Pz42NLTOwTIM9zbaLHr1af2Yyw
 pIwuM7eHho3OH5oL1Cy9gzqy31kpU8zUtcsMRb7lsT5iDGkmg5WYqAq8G2HvhNs9Iy7BvYwU4yd
 RAmeTNQakeApIXKtZ4CkKYX3toT3tnaNjfoj14SnyjbvPykqwp2XO5lA1T7ODW9DBEe/eK/0ujj
 +FuP8Y8w4Nu3pgio3Tqa09iYWqTRHnAakoVJtQZ4Jai+MZ4NMjPkN0MKTnKyKpDODAWJQB1zAV6
 I1sYWcf916nfJ+WLQRM28llfWExfjSgYedJwrC5hzwk/hrRGrzr3uRapCPC5HRN/J1YRf908ryr
 u65cxDGqpXJrLVMDkzPiQYfKnnmB+w==
X-Proofpoint-GUID: KnvIhd7XURvjqdqdH0SP-fe0T6u_ohK_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511270070

On X Elite, there is a crypto engine IP block similar to ones found on
SM8x50 platforms.

Describe the crypto engine and its BAM.

Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
The dt-binding schema update for the x1e80100 compatible is here
(already merged):

https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
---
Changes in v3:
- Fixed num-channels and qcom,num-ees properties by updating them to 20 and 4 respectively.
- Link to v2: https://lore.kernel.org/all/20250221-x1e80100-crypto-v2-1-413ecf68dcd7@linaro.org
Changes in v2:
- Added EE and channels numbers in BAM node, like Stephan suggested.
- Added v1.7.4 compatible as well.
- Link to v1: https://lore.kernel.org/r/20250213-x1e80100-crypto-v1-1-f93afdd4025a@linaro.org
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 51576d9c935d..a1cadcce98e1 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3033,6 +3033,30 @@ usb_1_ss2_qmpphy_dp_in: endpoint {
 			};
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
+			reg = <0x0 0x01dc4000 0x0 0x28000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			iommus = <&apps_smmu 0x480 0x0000>,
+				 <&apps_smmu 0x481 0x0000>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			num-channels = <20>;
+			qcom,num-ees = <4>;
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0x0 0x01dfa000 0x0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x480 0x0000>,
+				 <&apps_smmu 0x481 0x0000>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO 0 &mc_virt SLAVE_EBI1 0>;
+			interconnect-names = "memory";
+		};
+
 		cnoc_main: interconnect@1500000 {
 			compatible = "qcom,x1e80100-cnoc-main";
 			reg = <0 0x01500000 0 0x14400>;

---
base-commit: 765e56e41a5af2d456ddda6cbd617b9d3295ab4e
change-id: 20251127-crypto_dt_node_x1e80100-bcb1a2837b56

Best regards,
-- 
Harshal Dev <harshal.dev@oss.qualcomm.com>


