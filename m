Return-Path: <devicetree+bounces-236416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B22FDC440FA
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B5D83B39BB
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716C7301005;
	Sun,  9 Nov 2025 14:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LouQCAfv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iTaX+C1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9315B2FE592
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762699194; cv=none; b=Chzg3648dcmFpAbWZ6KPzZLQb6rk4+q45bcKYWymkzXJNCmG3lCOlLYARwWC6ZCTBZVnDf0pjutHJi126e9p8jI1nAT4IWcLqTr9HPpuLSsE5lWc66nD1DKGi3pKLKybzJPGICdwfEScI8tGRk6PHmPb9Qfm8YYMzxURNDP1piQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762699194; c=relaxed/simple;
	bh=0DTO16A80WGqaz3z0hmwtkj7NXigq+2LLdiQNk+Q8ls=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uz1sZZcdxlPdA7p93TxVvn51HKnmlVBx/HdNcpLYZE46jkZv1ROzRS6IepobIeAYmV7OhNRLsSRP9lTsguDObWYHASMkk6ETPKv7kcZYXVj1NoB2lrKlofiSr3QH8Sx/1xVCK7cJjphjQ8rOJxwi4yViQu3H2fGq4wlKgbMENqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LouQCAfv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iTaX+C1x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9AO68j281765
	for <devicetree@vger.kernel.org>; Sun, 9 Nov 2025 14:39:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XptDc+YZFL8JqGr8hCEtPLAIPxbU2ERemzFyFeabLdI=; b=LouQCAfvJVsviDRk
	e4CY4qK42rhnC0FvsyR2Cy/0F5qmsBpki4Fqpd6Ilw3/karaAt+lzYTtsXLMiboY
	mGuBD20b1cO+uOCgAHGusvJJrjG69B990iYgFvyDpMKUHe6a5FNkPzQaoR3YQkt5
	E8Ffsahc1ecGoxpaiRw5CeSIuKs0Gdc9lgbNmxMnxMw2reAGoHQd66xTG0qrQI/Z
	F2fG3D/j4eD7tt/NfXvMq1u677K6Wo6lfeTiNyC5f0Lnht90N9oMjp0w9kbMurth
	m3ojc9ApXLNT4xSsyoZE38iKk47TJ2O/HR7iwTLi8vlqtYG0KvhnKRAHtnw00VfK
	dagjPA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xvja8hw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 14:39:50 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3438744f12fso1349137a91.2
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 06:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762699189; x=1763303989; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XptDc+YZFL8JqGr8hCEtPLAIPxbU2ERemzFyFeabLdI=;
        b=iTaX+C1xNUpLW9+Y10tCVV38FRrmXjKhp80bTEg6i1irIHEeuEgJWA8Rj4GgE84ISi
         P9xtZmirh+uR4oIdKjQiOn1AC4Ps2xHzIsUZSExVTpyYLdbqjLXfjz9R5gPIj9z0bmcD
         So0RwVvIGw/Mi3fibW4AgWcNSW8MwLRgxlray8bPI1DoUe7tOJ38gAGHVnTncbM6wc0J
         jLJHFrm1R2YB9MseFWztjN7MXMRq1Y/vetp4g2X5kIf90JSU/eOvAo2iUFU13I3FE/Uq
         W22c6Msb42CMPEFQom4zF8khDYUw80qmu/hSkB2ASwsiwYe5OddxhyRSjDG2rhTf4C8I
         hi1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762699189; x=1763303989;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XptDc+YZFL8JqGr8hCEtPLAIPxbU2ERemzFyFeabLdI=;
        b=KE7LkcXoBhOOyan6BnOr2aMd5Y20wz6dSFymEk7WJBf3IIcTw/9ldcI1XGnIJ3MxRK
         wbiDUPmdtO8wwXZaipJyGzbaffujVnfG238jAPvyIQsaLgGbX7DP0bK8+hlF0BIg0D5+
         yPnGRUItxHv8/MHNoulTeAsLFQCIbZbZ6sFjxXeKQQrf77CNFz2tFj2Qfq7PFN2ZoSbU
         XOdjcDZhIvuyv+mfQo0rLK4py5bxXwKuIO4F12tvTonePHWpy9l9YFrae3sNKuyNBew4
         dRNts0uU5aQDJqvL82uioD/5mlcmkX7QChEIghIRcQG0LTlfbni+IPDxOirC4yUuQash
         +O+g==
X-Forwarded-Encrypted: i=1; AJvYcCV+exT5Nzk9XIjBmoAzKSfv8v1cu8Woa2M1MJGHMb9zu0ktAagvKxgqY8/6mQiUAeiXEA14QJ01HhXA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6E9o/P97DqgPwcVuNUxoO7cGZ9n9hhwsXo/ofEdMpQXDw6pPr
	ttyRpZ7cXflJp9XdatVbMMrh265eTMipLF1ulgIal2ivM0s+tuJsImrPRovLOhTEvOvkn1zU8w0
	yRAzUbbVPAvvOwcBOJoAGin+2BLbZnte+Ezz7HSgvG+rYAgBLfhXt8/kuRwQ9xwjf
X-Gm-Gg: ASbGncuzmkn12HMcz2ECXrusQFCct09VDt2w4vJlSdpQtY1gGdgvFijA2SP0XkhJGYp
	RMjTwPWmCoNtG6GqfOwYiep4z2sAN2ra1O3Oi4ZH+pMDlFM5DYFrq0/N6x5A+TAN44vnN7FuCUI
	gsM4HIONgd8fET2efoE8dXsZ59KxRLI21Lp0wmOZ4xX22wYzFQ0dhrcSh9YKUvuF1CM4hX4af4l
	zBGnU06HnVDYDnDNF3CFZGbp/po6W91cxqRphTc3MIPEJ0z+20n0F8BeWsrQbxSYBc/3IPoVDc8
	CCt3k4ZTfFG+JYpUCCxcSU+I+FBPk7JRLipb+qhgnx9ftizZlxnw7bNfgUq6Q8crkIPO010qQ3X
	k22jxmx2gi8QP/LKi7m+DvjZB2MNwym56uLc=
X-Received: by 2002:a17:90b:254b:b0:341:88c1:6a7d with SMTP id 98e67ed59e1d1-3436cbb3db9mr5858498a91.18.1762699189610;
        Sun, 09 Nov 2025 06:39:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGOq2jGoZdaGTg/RuLpVGRCaTMc0nO8pbXIWYTS2/MK7JSUVoJbW0TcdZDyaG0BSL/En7Uqvg==
X-Received: by 2002:a17:90b:254b:b0:341:88c1:6a7d with SMTP id 98e67ed59e1d1-3436cbb3db9mr5858477a91.18.1762699189136;
        Sun, 09 Nov 2025 06:39:49 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68a68e6sm14845401a91.4.2025.11.09.06.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 06:39:48 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 09 Nov 2025 20:07:25 +0530
Subject: [PATCH v17 12/12] arm64: dts: qcom: talos: Add PSCI SYSTEM_RESET2
 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251109-arm-psci-system_reset2-vendor-reboots-v17-12-46e085bca4cc@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
In-Reply-To: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Song Xue <quic_songxue@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762699073; l=1067;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=0DTO16A80WGqaz3z0hmwtkj7NXigq+2LLdiQNk+Q8ls=;
 b=tP463FsuDoN9+kJtN2MV9dK0Lk1uV0U1Hzq/yfzIbjg8ificPJU+/kUUPfp6nFtHl03InJtGh
 9VS6Mie4djKAilbj5ymty9l4y4D5eBAcfYCHZhg23+5Kh3vudrPO9iG
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=QuxTHFyd c=1 sm=1 tr=0 ts=6910a7b6 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=4cuBwC7xTQKafrdxVH8A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: lSiYqL3l-naPrJF6pyOTAIJpoWtFPXoR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA5MDEyOSBTYWx0ZWRfX3JHOl1K0cll2
 xuvRAqjWEp3zf0znFjMICv0s9tXKn56M9h6uC9F1z4i/RlK6k5+drpSvRc2K+SzJbA0j0/malo9
 tOubpt+eIJupwbCWTh+62J55isMQ2i3sPygrdkYevbiHEDcTZ8Tm+VaKAeTzCmHxsMzD9VtPv+E
 XcKHVo4a7a2EsW0UlKZXcNXnKujqhllZ0LiaSNMLBUS/TJ+5EwTw0WofwRF9sq/rc96L7STm3Oe
 ryE3g8V8ZFSGTCTKRT6TOj9RXXJs3QDn9HG/tFOscR2vt5MeZk3QlRFwtz+nwd8ivk+OuEISSuA
 ZOzsAXHqGtbkw3hUQF0sPo8tyCVpcYnJUjg7rDLIvrAgJdP7wUQZ4MbUb1y9U3thdJwThK1HCXl
 N0y8ymzejQHIaOCWi067KbMtXhBpvg==
X-Proofpoint-GUID: lSiYqL3l-naPrJF6pyOTAIJpoWtFPXoR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_06,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0
 spamscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511090129

Add support for SYSTEM_RESET2 vendor-specific resets as
reboot-modes in the psci node.  Describe the resets: "bootloader"
will cause device to reboot and stop in the bootloader's fastboot
mode.  "edl" will cause device to reboot into "emergency download
mode", which permits loading images via the Firehose protocol.

Signed-off-by: Song Xue <quic_songxue@quicinc.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index eb6f69be4a82ea47486f5c8e39519d0952b146cb..c946d07c540f5ae40f147ccb06539ecf0de18df5 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -612,6 +612,11 @@ cluster_pd: power-domain-cluster {
 					      &cluster_sleep_1
 					      &cluster_sleep_2>;
 		};
+
+		reboot-mode {
+			mode-bootloader = <0x10001 0x2>;
+			mode-edl = <0 0x1>;
+		};
 	};
 
 	reserved-memory {

-- 
2.34.1


