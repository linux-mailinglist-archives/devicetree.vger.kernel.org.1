Return-Path: <devicetree+bounces-271206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INPqOmZ5qGnpugAAu9opvQ
	(envelope-from <devicetree+bounces-271206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:26:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F69A2064CC
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79F9C3210382
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A55E3E5EC0;
	Wed,  4 Mar 2026 18:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jJaMHWVj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BGbwSTHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380A03E557B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772647479; cv=none; b=oQvsFUeZIF523aaOkoMdhIhth/Wbk8k0qrEz/wu2uGOYKbV70ohlTXCw1eGf9T2Uv8a5dyXyz7fKR/iijdhiSG/h6uBiDWpQTraD4iPKD9Hr7VeQZyrA1SKIAMh6NKQFY4aqznnPc9CtbeeeZ5RrOdeja7QzT7k4UOBOft9cR/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772647479; c=relaxed/simple;
	bh=UhQBeFgHwK+VhUEZZ9u/QamtLLiZ1oP9pqxntRK57Dk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=on8L36bwSCYJhEH3DZM9ts8bqauYPv+DlV6e0TO5KnOTSUZGnbc+bL3FtJe+WaOEg4ai9cvryVDTljivcq0cPD1Gpt1Wno4mLW5QQQEro92tXQJgGfs2FRuaIkAc7/t25fPqUqli9POA5NvBhSJlKxWKz1Dv9LL+xhn6N5fuTi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jJaMHWVj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BGbwSTHD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624G2Bvb035620
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 18:04:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NhDn1FDSw+c7UhbFQL/TJrvi10/P8i7V+vblELzHcoI=; b=jJaMHWVjsJjwa2u/
	aC0yykYaleCxm8NyrmFR3Bz1NCDL3FH1w5jjPlOadDOkQZ8sV73EyQTln5q6t8xs
	0J/CxMm3EwxgqY/1f1cmgFUn6fIR+jS6xNKbmxxyoXqoHODkTeE6Mifwo8/pejad
	J/mLYl+r7ThQkqBFMAsGhiNP8tNbNuOQMWZ3o02f+UaXf+QKdlIoFRKb2h/Yj58l
	FEek1ZSYPYjrScpyziIF5Q+XuuVr1SrbjSNufoah04obrMGzgDj1IAiBdrxK10qZ
	LlWO+ncPE3RxMNOrsVRhuZX+HWdPFXoS7erpNwHDEeOiHQIkBi39OUQA7EMUKqPF
	L5oQ8Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpqwg8e71-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 18:04:37 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35449510446so6740856a91.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772647475; x=1773252275; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NhDn1FDSw+c7UhbFQL/TJrvi10/P8i7V+vblELzHcoI=;
        b=BGbwSTHD5GwpLPBfgGi7fK0eNJfZ04SPFdDpl62WdocSIsBIOj7gscPAxFt6pHnhph
         WpPhOdGz1sh4/LTm6VR1SDkcyLHwFWyHbtb35G5k/4MmV18qr9rQ7vVoPK33Lf1HGCJV
         U/wkEjC7QislyKq3yHIjJCWIGjQPWf093uq8wB6R71/wvBpaZu+iZ8yv12hmizeQ01dQ
         RS+qJ+EsQHB9YCs3w8kduJTUd19jhWeeh7DOSCGozlBOpiajj9YJMR10SitbEwXnuOid
         VfLgh2zSLCr77Oj00DdeweoDnPj9MwbWAqkue80ynQDBGpcQyLJwSFClzMM4Xdxo6dbv
         YNFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772647475; x=1773252275;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NhDn1FDSw+c7UhbFQL/TJrvi10/P8i7V+vblELzHcoI=;
        b=YkCVRzKuvY33VTVPcKH1qq1hBX1YKvzOTsQ+X/K2AwGOmcZadcl83jZ5vWuy/afaPg
         sPY7pGJuxxBPo0sW4eNZGK1w9lNZ+VixdA17pWdxDLkd1ZANobvuZx8erbd+FIu3XiG7
         Rk9vZvUS3QsFignNS54MDYRpvHVzu6PyVPecATv39lOlZbBWngDi1XmyRTdfwGZ5jBRm
         filhfvq3IyTUlFcytuXKPpXgToOIRcX7EVN+i3g4wr7ncYq1bvQqvRNxJgshId2EQFmn
         KTxGMxPsopGh8rLH31a40+3krFBQXrGshKR2nSRCFAFhVG7vKKEAZAVwISR8+2bSncm7
         5Qlg==
X-Forwarded-Encrypted: i=1; AJvYcCX8od9GsfIbAeo5tm8bYoMGmYq1XQxF9XsjGzP4eZ1EFFbRwNGku0FdoTsflPnQQZuU9n3nBc6JRhi+@vger.kernel.org
X-Gm-Message-State: AOJu0YzgBrAt9dODN0AEcGdlm0wR3rqZ4vEyf6e1WH3OsANlTXSKew9Y
	J6VWZDDgbYa5lSeOo279DJco5LoQG16dI3VQE+j7HHlKBoq+U6Tdl+s/+L1uC/XC0gNB/cW9C7a
	mxffvihZ0kodAAcyO+bhUjGz/m4n7M6RoGlWCAAjHCkgKFHhzTlk4s/URYFRBcsf1
X-Gm-Gg: ATEYQzyqWHx0UcVQRxqSnx8wGzaVDGYUcfHJzZa1bGoSscJhFpSFeE95s3YQ0YcI5N/
	UEVnS5IIW16LYv6Lcgt74N3jMJmpsapk6XGhe6GES72hINo7aaZ7Gu4NIA3N8s7yWu8OetlEvFT
	H7uD6LJSB2GYb06qD9f9Lvp5oOoaW8IQYw99a/HMsZpfIEpA9akBhya4rEFlP+lDgeCaa3xJ4Wn
	GA02LEYWQ0vymryySKys9zBawP4yLRYZD2ehUROCjQylizayIsGZeY3PSbpni8865PCsfLljJ4g
	uNCb4yQSh9CzWd3hEqZ9OLWZxtknClucvJG+ktLrZ9j9oH1FgH0P+o7ICpNQwPMd/d2o00Gcb6F
	BZ9C7EmgXk8GaGAoTU0UE6W1SH9nzPfY8CwmqOSt6bOODRuobE/Ph1LXg3A==
X-Received: by 2002:a17:90b:3d81:b0:359:9669:c879 with SMTP id 98e67ed59e1d1-359a69cd901mr2630716a91.11.1772647474542;
        Wed, 04 Mar 2026 10:04:34 -0800 (PST)
X-Received: by 2002:a17:90b:3d81:b0:359:9669:c879 with SMTP id 98e67ed59e1d1-359a69cd901mr2630695a91.11.1772647474050;
        Wed, 04 Mar 2026 10:04:34 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359a8f22062sm1080606a91.1.2026.03.04.10.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:04:33 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:33:08 +0530
Subject: [PATCH v20 08/10] arm64: dts: qcom: lemans: Add psci reboot-modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-arm-psci-system_reset2-vendor-reboots-v20-8-cf7d346b8372@oss.qualcomm.com>
References: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
In-Reply-To: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Sudeep Holla <sudeep.holla@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772647398; l=1079;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=UhQBeFgHwK+VhUEZZ9u/QamtLLiZ1oP9pqxntRK57Dk=;
 b=RcmoQ1fYDcRXvDooluVeIsqC7tRYg4rdhmuADpGjwdfi7jgzmdro1TicHjZj8DieHX9B5HeQr
 oPFfLSLbZ/PCKjddL8VgGur6YGNV74s8lBO/Y3lhg+hfpieOYAYNN56
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=bdlmkePB c=1 sm=1 tr=0 ts=69a87435 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=Ld_RF3OM1xByVwKNVVYA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: BukrKAORs4YUbZfUZIjw0xZNY84LXw98
X-Proofpoint-ORIG-GUID: BukrKAORs4YUbZfUZIjw0xZNY84LXw98
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NyBTYWx0ZWRfX/e0ZTpndiYRU
 IzGXjlvXw+2HSvsG4eymPiNqCT17C5AQc6i9ii/8dZWt4N8taE7ZxaeQpgZt0T8W/Bot0PtCkj1
 vwdA3s6zfWNvsffDDzIlwZ55xgY1S6CpSdNQ9jlHo7KC/J/Bat5bNwtvPofAP8iuK/vRCD23NVI
 e1adkw2qJpcO6OFv1upjfyjA/zLu0FY3KYRdmJOHUM7ixBAM4B+VUekH2Eahk8bENZQThaOvlE0
 68m650sFFa1xnkZdl74UgV4UcI4+Ppcr4UqBd9K/gTI3Y2PWQWeF34tz6ESNFm5xoDg6PDXG8p1
 4B4yOdsuEn836P45B03QO+e91Ppx+xfLGYBTz0eNJBgzDFRopjEXxJwRhBHGMd5jMC+Sx3iYdg0
 4iHsyxnHc91c4gp88nVg1E9jDFz/YQRTFlNGv4E43s1zf0E5Fto5rjSUt6s759wNGgUNWve8Mff
 LZuDE8pedf7soeTZR0A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040147
X-Rspamd-Queue-Id: 5F69A2064CC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271206-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,arndb.de,arm.com,rock-chips.com,gmail.com,linaro.org,ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add PSCI SYSTEM_RESET2 reboot-modes for lemans based boards, for use by
the psci_reboot_mode driver.

The following modes are defined:
- bootloader: reboot into fastboot mode for fastboot flashing.
- edl: reboot into emergency download mode for image loading via
  the Firehose protocol.

Support for these modes is firmware dependent.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 808827b83553dd70904d771cc1da784c85fdc1a5..b5234a1b31761a6565299733a30cf3808c439976 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -635,6 +635,11 @@ system_pd: power-domain-system {
 			#power-domain-cells = <0>;
 			domain-idle-states = <&cluster_sleep_apss_rsc_pc>;
 		};
+
+		reboot-mode {
+			mode-bootloader = <0x80010001 0x2>;
+			mode-edl = <0x80000000 0x1>;
+		};
 	};
 
 	reserved-memory {

-- 
2.34.1


