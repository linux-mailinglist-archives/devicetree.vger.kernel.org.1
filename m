Return-Path: <devicetree+bounces-246522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F11EACBD6E1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:01:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1105230169A6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7EE327BE0;
	Mon, 15 Dec 2025 10:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LtocB77x";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="imPM3mpd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2642E2E8E09
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765796387; cv=none; b=url/wdopy8MEza9qhcAW69e/Z7whhcHzF7XCJwm38RVkxujMWCdGTq9JLMQziPLXX9FmLNcpQHB3olTrN7Mc5CLhBhuyM8WJiMxSF0PihNelC8qGn1v1oOihAqdadjBw1v0k8y1whDhNS8DWEOosOvNhgsacWI3FJRZvMtqXQKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765796387; c=relaxed/simple;
	bh=u9QBX+dJeL3okI8E78KFxq80Faq/zXrxythkCeA7nKQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=n+OnmeeChS78lOCpmSPcFqpBk6IeGz/6DBdNEeN2XpCBsvQuMZmzvYvTn2LPyeIrwy18j7hUIUKtij6mv/dUgkztzKjAUZrRB6wdp2m/vp0+c3W40a1+HPpQMhmeOxNlnBpkwsEUd8pkaIixjIwa/XQGx/2aeYmBcRpuscyyXaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LtocB77x; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=imPM3mpd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFAO6ng866262
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:59:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=T4oJ6gt4KKdX8ijefE9IVE
	ZIaaawKYY+XmHBrnNPb48=; b=LtocB77x08TngaHkuEsXtu9y0qUuYIIO/cUsVB
	Hpp/gRecRJw/dmtQ/fIR9tP36Tq5GmMusd9E28g5DmaM3/wXhcu6ZZBDGEQQ0IMQ
	BkBSG/FVHHbwOI7ZIH89fGul83aLeycM58HcSTwoimBnzHTBUCmzrCnfo+Qn6uXB
	HietvAUSESS0WjTLv0P3h0AG6zWXyamIk3jV/Z/FrXvUtzBfNCA0WhFuhx9B5fgm
	l1Tci/sijtgn5L3b4ED4Hf3fw0h2P0A0mDbDJeHN9D4Hj543G2A9SHtnpidP+RiH
	HZ/vvGkK92/vAmO2VnZiHqYg533AZF/JS58FcCNtidFJqmQQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11avm7y7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:59:43 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29da1ea0b97so87606035ad.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 02:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765796383; x=1766401183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T4oJ6gt4KKdX8ijefE9IVEZIaaawKYY+XmHBrnNPb48=;
        b=imPM3mpd7Kkxsozg26xZ1n6r3t6AjsoYFIgq1SW/6zDBzl+JjcqzziVwDLBrsetBcH
         gh2j0texZ/+nNI/dEJzBLwJw6485qxCfZoOSAfIJMOKafURd+kCYG1QDUf6jEmPM5wl/
         /t99GB6Zm4Y00BYTiEeofa2durCoJxi7g2LAyc4VSY4jCX+VGIO41Z0D8ZFBTO8Oys+T
         /HYxcvLj0ps3bprSWqgzTJv6AD9J/fAKEfgSWJtlZhgyFyz8rN2bEZQCsHJXkp1VO3/e
         UI0PyMO9Z6IkthJcUbdR47TkbCTCxzIJ0nQZjD1jFTmcznSmzFe6sTbHstRF+LpLuj0v
         KHJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765796383; x=1766401183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T4oJ6gt4KKdX8ijefE9IVEZIaaawKYY+XmHBrnNPb48=;
        b=we9CGj1OYDD8cEXSqb9/kHFKghEMzimOnWsb/cUZnWzt2cjrgjF7zQXSZJAI7C3B2y
         bGIstNHrE1dBnEQ8mgp9UsSGxbjJs4/MJKTBdsnoLBq3QaL46U4sR1sQlf3BbxC7aHzN
         1mhqv9AHiPLwQT6+PuALXbudk1YfzfkG6Wtct+NWOcR8d4TBQECfwIY6W8aWJNvloCBa
         F99UUBx6Jm3f6aMBvKmz8fzjR55TctBGALjQDuum+ZwG+02GD+SclLzS5a+5SmPU36et
         aJDnyCRFizlU3U6eJg/fv+cRALjdc4UAD3jtlxPPHvJW1lDoiDaj/FEwP7odBbvY9z4s
         q1qg==
X-Forwarded-Encrypted: i=1; AJvYcCXRIYSxc9pFiB+lqTJINRkJHI/LsnJuzXUYiSf5rU2wDBg55nO8fPSWSGwZsmxergJyjsdCQSkYx0Lu@vger.kernel.org
X-Gm-Message-State: AOJu0YxIiYArTQOQFSmTVh2lGgbxZI8IWHx2otYRJmZ5rqdFO1EHfp0q
	rC5CFG6ewS4uc81w1NXAeMCwQun9wgdQtt7nLiJ6wQgqoxQG4M52EWJcsAWhjDWOmegMO9eyN/v
	NwkFg1C4dT4XP02uOYn8DsQaT7JktMhKvAekDkSjq0rh3+qp2yZkmVhQGKWuuwL5Z
X-Gm-Gg: AY/fxX5RfVhosV4JkxvePy5UPwoDSy/WBkEQelo3uqysr9fm18bj79fmspXzXrWzJXo
	zdrJAXbT/InqQjrXvHRUNb43jpcG+0DQywDub7S/KsPGjjT4bhWF0c5f0UotKjlyZLsogshFXGk
	HCJ8zSsjzANytiEt65pYU0VZCJY/I25c9pk8iM+3Fssa3bZZocHgrGH+kcBIY6fcHRW7ooNcFHZ
	0p4TvTJUZg7jLYJnG3DoqFvOnDz43r8AKvLN04ZXfN+WM9+4BGJ6CV0xkVGrrS4UYJUbQUKHaEp
	PGdLtvfstleQuBNHpdXsMyogF29yTSTLmucvdf1JD6y3lo0HXfAGzHXZHAGow49Ho5+ssRVrXs5
	cDPbs45Jn19UMOmixcWvkaz1HKrW6
X-Received: by 2002:a17:903:384f:b0:2a0:d629:9035 with SMTP id d9443c01a7336-2a0d62993c0mr40867795ad.3.1765796382862;
        Mon, 15 Dec 2025 02:59:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbqVQCNdG9KO1XpeBkzkOGUd3HzF41bQvpMq9Yn//l+gdRpx2LP5NHbQ9FhTfeU1Z+Kbk6vw==
X-Received: by 2002:a17:903:384f:b0:2a0:d629:9035 with SMTP id d9443c01a7336-2a0d62993c0mr40867485ad.3.1765796382254;
        Mon, 15 Dec 2025 02:59:42 -0800 (PST)
Received: from codeaurora.org ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9d50f9fsm128838345ad.44.2025.12.15.02.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 02:59:41 -0800 (PST)
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Adjust tsens thermal zone configuration
Date: Mon, 15 Dec 2025 16:29:34 +0530
Message-ID: <20251215105934.2428987-1-manaf.pallikunhi@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA5MyBTYWx0ZWRfX3xoQgSUzZvIv
 FbAlMc63ag+nQW+3pKgUxWGM9c2Xkfgr/VcOFYK+wfSpwKKzOPh9KEQuHUgGs4Iz5YPqeBe4xTJ
 hjbwGmw7ZZupyNJG6QVTnbeCTbWk4IqgrfzOh0RTJXeHyFLEah4sQWN9SoMuqLceEnaEWRKew64
 +wYJmf/v/LVI71QAmN8RRnk6PdyeF0hfDyEmSgZ0WOr9MU9K13BbpzdztyKTMfUCitbM/4Mgz3A
 Kl5GckNcI30y1iZ18kT9xHnUA0hHzL/Nhy3CBOH8l2NHaS8UL/15ejFqCcQ7rKoV6SnQyF+V0iH
 8B4B/NGWPlwJsDwzF74snLpJuB9G4zwFYMP24Olewppx0qhjiejWGPKfxcTpR3bnZNtPKmNLfYY
 94oNJLtU/D1mRYgXmlTLeNgQEAsGqg==
X-Proofpoint-GUID: SfSFa0shQIHGde3ctZDoCBBMQVUQ4ibR
X-Authority-Analysis: v=2.4 cv=PJQCOPqC c=1 sm=1 tr=0 ts=693fea1f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=w0Yfo3i1lgJA89rflR8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: SfSFa0shQIHGde3ctZDoCBBMQVUQ4ibR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_02,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150093

The QCS6490 rb3gen2 board uses the same Qualcomm QCM6490 platform
but has a different thermal junction temperature specification
due to package-level differences.

Update passive/hot trip thresholds to 105°C and critical trip
thresholds to 115°C for various subsystem TSENS sensors.

Disable CPU cooling maps for CPU TSENS since CPU thermal mitigation
is handled automatically in hardware on this board.

Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 334 +++++++++++++++++++
 1 file changed, 334 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index f29a352b0288..a7e62e3845a6 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -1081,6 +1081,340 @@ right_spkr: speaker@0,2 {
 	};
 };
 
+&thermal_zones {
+	cpu0-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu1-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu2-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu3-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu4-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu5-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu6-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu7-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu8-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu9-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu10-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	cpu11-thermal {
+		trips {
+			/delete-node/ trip-point0;
+			/delete-node/ trip-point1;
+
+			cpu-crit {
+				temperature = <115000>;
+			};
+		};
+
+		/delete-node/ cooling-maps;
+	};
+
+	aoss0-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			aoss0-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	aoss1-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			aoss1-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	cpuss0-thermal {
+		trips {
+			/delete-node/ trip-point0;
+
+			cluster0-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	cpuss1-thermal {
+		trips {
+			/delete-node/ trip-point0;
+
+			cluster0-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	gpuss0-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			gpuss0-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	gpuss1-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			gpuss1-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	nspss0-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			nspss0-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	nspss1-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			nspss1-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	video-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			video-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	ddr-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			ddr-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	mdmss0-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			mdmss0-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	mdmss1-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			mdmss1-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	mdmss2-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			mdmss2-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	mdmss3-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			mdmss3-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+
+	camera0-thermal {
+		trips {
+			trip-point0 {
+				temperature = <105000>;
+			};
+
+			camera0-crit {
+				temperature = <115000>;
+			};
+		};
+	};
+};
+
 &tlmm {
 	gpio-reserved-ranges = <32 2>, /* ADSP */
 			       <48 4>; /* NFC */
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


