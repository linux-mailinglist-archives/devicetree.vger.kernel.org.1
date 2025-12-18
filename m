Return-Path: <devicetree+bounces-247731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C952CCAD3A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:17:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC06F30145BA
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 08:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16052330B0A;
	Thu, 18 Dec 2025 08:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aSInmJ4u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fLKmBYfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A567632FA2D
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766045461; cv=none; b=d73HiWUGn8wb10qAX0H9ZId7WQhv5UX4dCmQ/IeL0nN6qIEQ4DInHQvykUekMftPw1KNEVRbjVDAGsRZgDOPtqfmyiQdRCW1ahpRUNtvV3TPaWWfsPHkGXm64JjR4QV9PSlCIf8v8sKBEEULiC9fVNsBkMO2KwWX+jNZtj1CloQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766045461; c=relaxed/simple;
	bh=O3lebP0j3CFc+4vd2v8DIGqiBdADibYV+coTgG78B8w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ua9BF0SqZK/eQcktdVtJKQPwUXg8TuyJaTPSPFfHJweM28FiE6sVIXHRiIRq95uQUObVfUUEEb3Zuq6spggPdA4sObtb60o5JI6ez1iRsabZwOOZXQlylPi+v9fcH+ERWheboE37FT+nAATVuXNSSugi7R+gWCIU7iM3pQJRTtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aSInmJ4u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fLKmBYfY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI1YTFJ680496
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sG1WZ80GdTZxaNTh3bLb2aJSY//j7WYleV6GdsKVEEs=; b=aSInmJ4u044Jhan9
	hrtIvLHvEhPl6RwSv/SyHN0lJRHwqmYrdlweZTZ+nzhdGycZTM5CrhALtAM3WGe7
	shi0eDfUMh08CKGtKQdLR+gzBX1edw6uHgOIuMBvUVTy1/Yts9S2VB7TmbYdOpjd
	JmFbSocJLW5BKrr0Taa9mY4n/URdEeO7izHxAXszzPgJBpB8eoLaOmR0q9ToLki6
	PYv1cIXtEon835YnqxH4xM62DDqSj6DZqQaLW4I/jsbaO0RQxhcelIdfroZ2NwfR
	erbdicZ6LekUWtbZmeIZHx9afeB+0qlxhq4Bkg8qwuDgCJ5VPnt8fZq/IC0GasWe
	ZzRjGw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b45bhhces-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:55 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c0bead25feeso372712a12.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766045454; x=1766650254; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sG1WZ80GdTZxaNTh3bLb2aJSY//j7WYleV6GdsKVEEs=;
        b=fLKmBYfY4i6I8zwYTwGnKhoeI37jDwyxvDi/LGl1O09x3fNb6b812UZoibxRgfpO5j
         mUea5Pvbl2nccEx6rBr5d3FLBGl6Wt1MBONjn3rCfew/T8O72anxeAVRcQhu2KwPAuTv
         Wd9LzAipL9RwGv2HZBknBvZGOGGSHmLaYXRAzAxfiaCTk20Zarf3dIZ8sRHNiherF5kq
         NEum6QWv9Pr+DQSvym39hog40YkhVPWsOyUZYwsJRHIwBU/f3x1IKMom/8sXKhTsFJ0A
         AiMdjnznoIU8Ks9xE7bY+oTxjCux89XQubLYs7C0yd0MGYrZpgXqzaV+rV2NbEyhpsyl
         qB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766045454; x=1766650254;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sG1WZ80GdTZxaNTh3bLb2aJSY//j7WYleV6GdsKVEEs=;
        b=OSkLar03p1JL3VYoo6Iq5Z8+R7VyZnUseS1SYVT5LgZz7fRGZteNbZiKH4IQXFHzF8
         p+6M/+9JInZ3QZ8hTrnJq06waFyqwm35uVwGpL+6MrlnCtT8x4ZSjZeD7UFFIU8yByCX
         MhS810MMDDBjp1kIvy+QiXj0wEyPGfRmO9FZ3+j2P/XpeTP+GqJPAwmNdR3Nd7lVY5qe
         Aji5GGaN5+miAFPbXba80eLJQCb3KTPnZmdYihaLCDZkgyp7qMbLg9I/EWqKbTwfH3xt
         ZQHOPpTx1w/NuhrI3ixLriiAmGoMfNnMgIWGLb6fOCsLmyrO8IPmSafCxccVOrfVP2xF
         DJeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKw5oRBhOWGdS0LFfHfergWk2LoRQ3d/6g9oYjm5FAHGIkNQWHDmah918nVNcnbwokjDTwKvJ+p+dG@vger.kernel.org
X-Gm-Message-State: AOJu0YwapJFzdessy28UitbMveWL8Nub7SYnOtlFsJkGBUnLcCMZxvdI
	AaZPaQfi80rV8PxTfQ7CP/KpCmHhbDEUvRAckK4WAkXoIX51V+EDz7SpDXCsBBb7OmWRZnBs/ad
	laMWE69TWWvyuXc5CMxOPRQz4Vnp+wCSwE0iqt7yR2t2P4k+XPlv9KU14Qqf28y3W
X-Gm-Gg: AY/fxX4/gDr2YiAlXQ2u/4ePhEHnALLydXRLkjbx4rmPG1U2f1tpYqFABJPaN4HB71v
	9SZAvxN6OYLJ0x4s5ir3s87Uk41Bn9CgP8MfTZodmqjCCc8rtvjqJ6EAEn5WCT2SEzIpoPJSvJ8
	zsrZRcWbarJ0RBBIlFHFm5nXR0Nu0H6btLBHYvaeXe6+rifRG+is1bCNAVMkF92iI5OsTiA1pqT
	iTkwfs4mSow4UeLUPAPMmuJjAymN8TAU8V97PwGKJ9MnQHtkunpWqyffGD5wEIeCZLH4NYmtN/S
	sbgJitDJqYq5f4qFN+RwAhO2E5QpZWRbiySjukccM6OPLX92m1Eo3/e44ueWPymUumqsFANlOB0
	GjxV/60SSQfKJE/k843Xo5pRAFcm9zYp/wZVBfZ1DeeaNgToOr0Kxq2gS5igZ6sB0PF4=
X-Received: by 2002:a05:693c:4144:20b0:2b0:4c33:8e41 with SMTP id 5a478bee46e88-2b04c3396b1mr2071917eec.20.1766045454351;
        Thu, 18 Dec 2025 00:10:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHD2VP67zT5B5y+7lY8WNaa47ogrhNludkWA85whK5lk//2YwQDGZoidIT7qDtLm/qeA2zjAg==
X-Received: by 2002:a05:693c:4144:20b0:2b0:4c33:8e41 with SMTP id 5a478bee46e88-2b04c3396b1mr2071893eec.20.1766045453740;
        Thu, 18 Dec 2025 00:10:53 -0800 (PST)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b04e58d423sm2564824eec.6.2025.12.18.00.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 00:10:53 -0800 (PST)
From: yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 00:09:52 -0800
Subject: [PATCH v2 12/12] arm64: dts: qcom: hamoa: Add CoreSight nodes for
 APSS debug block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-cpu_cluster_component_pm-v2-12-2335a6ae62a0@oss.qualcomm.com>
References: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
In-Reply-To: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        maulik.shah@oss.qualcomm.com, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766045439; l=20225;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=OSpn+qOE01+ChQYG4B4E7m17DuVeVtvMUxcLoJ3PwDU=;
 b=YafyrU0mQNdNr7r/T2pwh3fMGQJww52o1W/HEABZaTXedXw+u3EBGOYrqpr2tDZj+D1boOLIq
 I7n8I1ypa6mAnDJ6CsXHm752F6qKICRgwdD3xmIckiFuZX7rO5i9ygC
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-GUID: _6WcjsZEq-H3cPAHJN4hZSAYf2v_SSvB
X-Proofpoint-ORIG-GUID: _6WcjsZEq-H3cPAHJN4hZSAYf2v_SSvB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA2NiBTYWx0ZWRfX1taslUfloKke
 yudsJtjwS/pm0gMKaVxqqYT/5TkTYKo3e3kguh+EkTYOvstUUlRT/ZAQ0XC1FEWlK0i0nUK+L15
 dPIoJbc6hC9lTPLULPyMOpKAM2RbniakACPC+oW2WMdZZC2wNME9OFWutHMYhlPi/4baSjrjb+I
 4LvVBxg2MlOsDRWEqBOVARgLljBBwM/zdkx+BOLo3jfiwxNpWeJLWosV+vviz1ASmtUNvTn2JGA
 iWweA8iK7J3dVYf3Xzk2DImT3stcW7hVZjRiGPxAVePoXm1vjQIAZdTJNVKV+xi7TUvlG/jijGw
 0lPUEuf2fX3oOJfdMvuSkaeYXdjfrtO2Tm6t9YqE+DgKaDfVeIiS3Xto+vczRXbJPE8NTtdmZFn
 rFUOduUuIYaMEHus4Pfqpq45WM4nPg==
X-Authority-Analysis: v=2.4 cv=SZr6t/Ru c=1 sm=1 tr=0 ts=6943b70f cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rG_eRC_tWg5vcVVOg78A:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512180066

From: Jie Gan <jie.gan@oss.qualcomm.com>

The APSS debug block is built with CoreSight devices like ETM,
replicator, funnel and TMC ETF. Add dt nodes for these devices to enable
ETM trace.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
Co-developed-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 926 ++++++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/purwa.dtsi |  12 +
 2 files changed, 938 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20396a9792efcfcd6ce6dd877435d1..8c3de8bf058daa681db040c4a9a38253863e6c78 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -305,6 +305,210 @@ eud_in: endpoint {
 		};
 	};
 
+	etm-0 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu0>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm0_out: endpoint {
+					remote-endpoint = <&ncc0_0_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm-1 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu1>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm1_out: endpoint {
+					remote-endpoint = <&ncc0_1_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm-2 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu2>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm2_out: endpoint {
+					remote-endpoint = <&ncc0_2_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm-3 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu3>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm3_out: endpoint {
+					remote-endpoint = <&ncc0_3_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm-4 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu4>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm4_out: endpoint {
+					remote-endpoint = <&ncc1_0_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm-5 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu5>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm5_out: endpoint {
+					remote-endpoint = <&ncc1_1_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm-6 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu6>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm6_out: endpoint {
+					remote-endpoint = <&ncc1_2_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm-7 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu7>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm7_out: endpoint {
+					remote-endpoint = <&ncc1_3_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm8: etm-8 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu8>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm8_out: endpoint {
+					remote-endpoint = <&ncc2_0_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm9: etm-9 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu9>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm9_out: endpoint {
+					remote-endpoint = <&ncc2_1_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm10: etm-10 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu10>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm10_out: endpoint {
+					remote-endpoint = <&ncc2_2_rep_in>;
+				};
+			};
+		};
+	};
+
+	etm11: etm-11 {
+		compatible = "arm,coresight-etm4x-sysreg";
+
+		clocks = <&aoss_qmp>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu11>;
+		qcom,skip-power-up;
+
+		out-ports {
+			port {
+				etm11_out: endpoint {
+					remote-endpoint = <&ncc2_3_rep_in>;
+				};
+			};
+		};
+	};
+
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-x1e80100", "qcom,scm";
@@ -6864,6 +7068,14 @@ funnel1_in2: endpoint {
 					};
 				};
 
+				port@4 {
+					reg = <4>;
+
+					funnel1_in4: endpoint {
+						remote-endpoint = <&apss_funnel_out>;
+					};
+				};
+
 				port@5 {
 					reg = <5>;
 
@@ -8154,6 +8366,720 @@ ddr_funnel1_out: endpoint {
 			};
 		};
 
+		apss_funnel: funnel@12080000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x12080000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					apss_funnel_in0: endpoint {
+						remote-endpoint = <&ncc0_etf_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					apss_funnel_in1: endpoint {
+						remote-endpoint = <&ncc1_etf_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					apss_funnel_in2: endpoint {
+						remote-endpoint = <&ncc2_etf_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					apss_funnel_out: endpoint {
+						remote-endpoint = <&funnel1_in4>;
+					};
+				};
+			};
+		};
+
+		funnel@13401000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb908>;
+			reg = <0x0 0x13401000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd0>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@2 {
+					reg = <2>;
+
+					ncc0_2_funnel_in2: endpoint {
+						remote-endpoint = <&ncc0_1_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc0_2_funnel_out: endpoint {
+						remote-endpoint = <&ncc0_etf_in>;
+					};
+				};
+			};
+		};
+
+		tmc@13409000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb961>;
+			reg = <0x0 0x13409000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd0>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc0_etf_in: endpoint {
+						remote-endpoint = <&ncc0_2_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc0_etf_out: endpoint {
+						remote-endpoint = <&apss_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		replicator@13490000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x13490000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd0>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc0_0_rep_in: endpoint {
+						remote-endpoint = <&etm0_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc0_0_rep_out: endpoint {
+						remote-endpoint = <&ncc0_1_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		replicator@134a0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x134a0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd0>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc0_1_rep_in: endpoint {
+						remote-endpoint = <&etm1_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc0_1_rep_out: endpoint {
+						remote-endpoint = <&ncc0_1_funnel_in1>;
+					};
+				};
+			};
+		};
+
+		replicator@134b0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x134b0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd0>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc0_2_rep_in: endpoint {
+						remote-endpoint = <&etm2_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc0_2_rep_out: endpoint {
+						remote-endpoint = <&ncc0_1_funnel_in2>;
+					};
+				};
+			};
+		};
+
+		replicator@134c0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x134c0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd0>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc0_3_rep_in: endpoint {
+						remote-endpoint = <&etm3_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc0_3_rep_out: endpoint {
+						remote-endpoint = <&ncc0_1_funnel_in3>;
+					};
+				};
+			};
+		};
+
+		funnel@134d0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb908>;
+			reg = <0x0 0x134d0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd0>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ncc0_1_funnel_in0: endpoint {
+						remote-endpoint = <&ncc0_0_rep_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					ncc0_1_funnel_in1: endpoint {
+						remote-endpoint = <&ncc0_1_rep_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					ncc0_1_funnel_in2: endpoint {
+						remote-endpoint = <&ncc0_2_rep_out>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+
+					ncc0_1_funnel_in3: endpoint {
+						remote-endpoint = <&ncc0_3_rep_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc0_1_funnel_out: endpoint {
+						remote-endpoint = <&ncc0_2_funnel_in2>;
+					};
+				};
+			};
+		};
+
+		funnel@13901000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb908>;
+			reg = <0x0 0x13901000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd1>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@2 {
+					reg = <2>;
+
+					ncc1_2_funnel_in2: endpoint {
+						remote-endpoint = <&ncc1_1_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc1_2_funnel_out: endpoint {
+						remote-endpoint = <&ncc1_etf_in>;
+					};
+				};
+			};
+		};
+
+		tmc@13909000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb961>;
+			reg = <0x0 0x13909000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd1>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc1_etf_in: endpoint {
+						remote-endpoint = <&ncc1_2_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc1_etf_out: endpoint {
+						remote-endpoint = <&apss_funnel_in1>;
+					};
+				};
+			};
+		};
+
+		replicator@13990000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x13990000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd1>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc1_0_rep_in: endpoint {
+						remote-endpoint = <&etm4_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc1_0_rep_out: endpoint {
+						remote-endpoint = <&ncc1_1_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		replicator@139a0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x139a0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd1>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc1_1_rep_in: endpoint {
+						remote-endpoint = <&etm5_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc1_1_rep_out: endpoint {
+						remote-endpoint = <&ncc1_1_funnel_in1>;
+					};
+				};
+			};
+		};
+
+		replicator@139b0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x139b0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd1>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc1_2_rep_in: endpoint {
+						remote-endpoint = <&etm6_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc1_2_rep_out: endpoint {
+						remote-endpoint = <&ncc1_1_funnel_in2>;
+					};
+				};
+			};
+		};
+
+		replicator@139c0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x139c0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd1>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc1_3_rep_in: endpoint {
+						remote-endpoint = <&etm7_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc1_3_rep_out: endpoint {
+						remote-endpoint = <&ncc1_1_funnel_in3>;
+					};
+				};
+			};
+		};
+
+		funnel@139d0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb908>;
+			reg = <0x0 0x139d0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd1>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ncc1_1_funnel_in0: endpoint {
+						remote-endpoint = <&ncc1_0_rep_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					ncc1_1_funnel_in1: endpoint {
+						remote-endpoint = <&ncc1_1_rep_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					ncc1_1_funnel_in2: endpoint {
+						remote-endpoint = <&ncc1_2_rep_out>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+
+					ncc1_1_funnel_in3: endpoint {
+						remote-endpoint = <&ncc1_3_rep_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc1_1_funnel_out: endpoint {
+						remote-endpoint = <&ncc1_2_funnel_in2>;
+					};
+				};
+			};
+		};
+
+		cluster2_funnel_l2: funnel@13e01000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb908>;
+			reg = <0x0 0x13e01000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd2>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@2 {
+					reg = <2>;
+
+					ncc2_2_funnel_in2: endpoint {
+						remote-endpoint = <&ncc2_1_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc2_2_funnel_out: endpoint {
+						remote-endpoint = <&ncc2_etf_in>;
+					};
+				};
+			};
+		};
+
+		cluster2_etf: tmc@13e09000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb961>;
+			reg = <0x0 0x13e09000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd2>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc2_etf_in: endpoint {
+						remote-endpoint = <&ncc2_2_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc2_etf_out: endpoint {
+						remote-endpoint = <&apss_funnel_in2>;
+					};
+				};
+			};
+		};
+
+		cluster2_rep_2_0: replicator@13e90000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x13e90000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd2>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc2_0_rep_in: endpoint {
+						remote-endpoint = <&etm8_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc2_0_rep_out: endpoint {
+						remote-endpoint = <&ncc2_1_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		cluster2_rep_2_1: replicator@13ea0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x13ea0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd2>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc2_1_rep_in: endpoint {
+						remote-endpoint = <&etm9_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc2_1_rep_out: endpoint {
+						remote-endpoint = <&ncc2_1_funnel_in1>;
+					};
+				};
+			};
+		};
+
+		cluster2_rep_2_2: replicator@13eb0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x13eb0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd2>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc2_2_rep_in: endpoint {
+						remote-endpoint = <&etm10_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc2_2_rep_out: endpoint {
+						remote-endpoint = <&ncc2_1_funnel_in2>;
+					};
+				};
+			};
+		};
+
+		cluster2_rep_2_3: replicator@13ec0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb909>;
+			reg = <0x0 0x13ec0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd2>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				port {
+					ncc2_3_rep_in: endpoint {
+						remote-endpoint = <&etm11_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc2_3_rep_out: endpoint {
+						remote-endpoint = <&ncc2_1_funnel_in3>;
+					};
+				};
+			};
+		};
+
+		cluster2_funnel_l1: funnel@13ed0000 {
+			compatible = "arm,primecell";
+			arm,primecell-periphid = <0x000bb908>;
+			reg = <0x0 0x13ed0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			power-domains = <&cluster_pd2>;
+			qcom,cpu-bound-components;
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ncc2_1_funnel_in0: endpoint {
+						remote-endpoint = <&ncc2_0_rep_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					ncc2_1_funnel_in1: endpoint {
+						remote-endpoint = <&ncc2_1_rep_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					ncc2_1_funnel_in2: endpoint {
+						remote-endpoint = <&ncc2_2_rep_out>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+
+					ncc2_1_funnel_in3: endpoint {
+						remote-endpoint = <&ncc2_3_rep_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ncc2_1_funnel_out: endpoint {
+						remote-endpoint = <&ncc2_2_funnel_in2>;
+					};
+				};
+			};
+		};
+
 		apps_smmu: iommu@15000000 {
 			compatible = "qcom,x1e80100-smmu-500", "qcom,smmu-500", "arm,mmu-500";
 			reg = <0 0x15000000 0 0x100000>;
diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
index 2cecd2dd0de8c39f0702d6983bead2bc2adccf9b..38f2df9e42b60b5f22decfb464381bce214d414d 100644
--- a/arch/arm64/boot/dts/qcom/purwa.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
@@ -21,6 +21,18 @@
 /delete-node/ &gpu_speed_bin;
 /delete-node/ &pcie3_phy;
 /delete-node/ &thermal_zones;
+/delete-node/ &etm8;
+/delete-node/ &etm9;
+/delete-node/ &etm10;
+/delete-node/ &etm11;
+/delete-node/ &cluster2_funnel_l1;
+/delete-node/ &cluster2_funnel_l2;
+/delete-node/ &cluster2_etf;
+/delete-node/ &cluster2_rep_2_0;
+/delete-node/ &cluster2_rep_2_1;
+/delete-node/ &cluster2_rep_2_2;
+/delete-node/ &cluster2_rep_2_3;
+/delete-node/ &apss_funnel_in2;
 
 &gcc {
 	compatible = "qcom,x1p42100-gcc", "qcom,x1e80100-gcc";

-- 
2.34.1


