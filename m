Return-Path: <devicetree+bounces-271208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDyCN3h5qGnpugAAu9opvQ
	(envelope-from <devicetree+bounces-271208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:27:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEE52064E8
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 450F63217A4A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 687E43E7144;
	Wed,  4 Mar 2026 18:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UPeSScBH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KzWKkZE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4573E5EEC
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772647486; cv=none; b=ANydRD4it1fdnJXvqw/ku2Nte6GeJOh0Ez+Yi02B1lsud1I5fU6K+fzRDl+YQzdD1KKRLmGrhAU763lzo6MtxNq3Z42jweIpTEsSKjBGWhzydQCju0JF8vWBL257lWVCadsm43o0KI6ArJG6fSBGCZU+wyHVkCbs+r73SnWlnGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772647486; c=relaxed/simple;
	bh=Padqu+PvS9ADlI3cueabj4f23ybpQ0vF53i2fpuD/lw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jFaXqATzN7eBkwSVE8dTsw0OZts49g06sl79InaTnTvlJqcs/yVcx/KwmP4LlemyI0jRPFRq8qruzpCvSRSt+8zhcjfVxFPkd01NuUxMrsYKlkgpPdsBzq83r2QkWh31Sabuc+tGlevOIqpbJomA246Plfc3NRyQbMNe33BXllU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UPeSScBH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KzWKkZE0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624D00QN1203226
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 18:04:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kTTNZDsVcxtX1XnLnS05CMFNUc+dltAX8MCcE9nX8jo=; b=UPeSScBH9jwnA4bR
	Ni03xOurnQYCwd56akYIQPKVvob6IqeVx8eE7xEnfrYQ9ACfVbgbXbLd+7mqoX9D
	p7b5GBqXXg/D0x8ZL3xkLi90jOTXARtsOvqzP/hM0JANggQ2Ue1sdtrNR4KLOE8n
	MH7WgUCGJ3FvZbo92NFsd0Bb5s5URXXzTGQcqmVgLuAyPgWWKZSXABzKvaT9y6bT
	H3AH/uk3IqKd64UgqzZ2V3RRdFW7iwd5hRwK3WL35WYN8noduI/AYJsv3zq0JKZK
	qH0eypK4kOS7H692C8CmJ13WnwN0/KwfiZh02Z5bwx0yRjceeiayUAjoXj9JZSxh
	4UdWog==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpf9c2a8s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 18:04:44 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3598f4fbb13so3356468a91.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772647484; x=1773252284; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kTTNZDsVcxtX1XnLnS05CMFNUc+dltAX8MCcE9nX8jo=;
        b=KzWKkZE04FedBPHi+DVxpn6kIMbC/WK2I0CWX9DWESrvFJ+10ZbhgbORa9x+pBiTNp
         nzvMNJKQh95Yb94kqM3VViZi0iPrNnUnQVHJ27D5ZF7+ekXbUmr9WjvVzjE/m6jgeTPJ
         LEREbD+vnoXUSnjlcwApI/vVsvExZ95rpxNcOE72IabzLoTy5vfBeaAw54l+C2utVOJ0
         SkAXaAEQVOS7uXsmX0T5SM4g1Ou7aXWum5/+stw+jw4oi5Slv6SXfzCmyt3QPMMyLLwA
         hv7AXY/6YOc68hNOGd2Xd7qMHGajObl09bBxqc3z/hc4psNfxf/++E0VOGNGYyxpLZKj
         hYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772647484; x=1773252284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kTTNZDsVcxtX1XnLnS05CMFNUc+dltAX8MCcE9nX8jo=;
        b=envg+DiB3Krd2HvaB4rrsaDGx53XayJ2MurLyviFZjA7Dt2kp+T0Ny1+2w8Zz6gRdQ
         M/7Oq9pGj7XH9rCcFlTCz2ECztsXZUFNSo5PQO6zHP5HK6tpm2WD9V/OEe8/grq7TugE
         raf2YJGo5+YsVyitvZ64g+/VB4GTxuGjebHJDKeqN2qIJ+kmnZyVGKKhomBWMVkbIyz+
         RNz2AkhmP31IdeFmSqL7PDd2AslWovOnM7FVLAhWAyo1chHkLEmvPJiStDrmylhOHaOF
         VcrsXHo34qoB9bfj1t3NC8x71/eVGG0p+UeJ/ClXy3MRYELMTVlAJulD22oJSKGHwQHJ
         hjPA==
X-Forwarded-Encrypted: i=1; AJvYcCXT46Hc24T4Axf96eD6psWxguM0wJoXY+vq8BLxEKVlevDLEhj3khy4miBtkKwOrhZ5+jFsGugMlQ5r@vger.kernel.org
X-Gm-Message-State: AOJu0YwPKt076QUtYobNr7QrdP7vtYTehbkRN/lY8MwB9pBuak/OcnS1
	SxY1JntU++CGFmszJtiBEkbhO5Fo3TYw5pJSJo7pQE4++xegAC3lnRGfVNEOWfoWN4leYZC/MJT
	VqSS9ki26U2iTgsOr44w+O8MJN3SFwr6gyFMe261c2XVRLvxnZCWd3Q6+8C/88Rex
X-Gm-Gg: ATEYQzw5vzasUGdtTmum6meAc1Hq1qLHu2YPHwLLWuxhB79ffxIZfjFUZV4OQWSqBcd
	C8diqMrnHqNgMEqhgkF48+rfySDvoL1xdxZK52OAQ9EjYkkeY2S5ILg+KCuTb7od9gbgALQeFNP
	i1IjhXQemc0N1zOzd34VCxKB7A7bVQz8iVxSKyHS35emmsRK+y6Lalcvw46O7YA9JenHmi5nRZG
	Z0GftgIwIyA397JJYPJRQdrzaP0MUqINOTeXGiMF+n80kzIeuA3PzAz7G+i/6wpMoOyc96+dhXe
	oAzkpHnlLJDhpZHvu+w2+V1I1fUFevXeWcC/Cc9njimJzuEO6+qGbJIgirxVTye0L93vHNvGQ5l
	nCdB80FbXizuzsA7eQFkoXWZxYKXipyBBz/NSw8ft1qr6MjwMk+TNrbmAkg==
X-Received: by 2002:a17:90b:1d51:b0:359:8d2e:6f79 with SMTP id 98e67ed59e1d1-359a69e4ceamr2610454a91.14.1772647483922;
        Wed, 04 Mar 2026 10:04:43 -0800 (PST)
X-Received: by 2002:a17:90b:1d51:b0:359:8d2e:6f79 with SMTP id 98e67ed59e1d1-359a69e4ceamr2610419a91.14.1772647483396;
        Wed, 04 Mar 2026 10:04:43 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359a8f22062sm1080606a91.1.2026.03.04.10.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:04:42 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:33:09 +0530
Subject: [PATCH v20 09/10] arm64: dts: qcom: monaco: Add psci reboot-modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-arm-psci-system_reset2-vendor-reboots-v20-9-cf7d346b8372@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772647398; l=1066;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Padqu+PvS9ADlI3cueabj4f23ybpQ0vF53i2fpuD/lw=;
 b=qRU8pwtXB6YToHNyc5AW6gfYjLZkEIrjxg1hQxmiDTVXZEto3zgV6elR626vGLihxk595WpII
 cfyi/8WtGvtA1BOjl70TJ/Ijiozz76laP0WmYq4RdUc2G/RypRpHdNU
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NyBTYWx0ZWRfX7JRBt2PSffmc
 1vh4MOxS911J5K1zJlRBgB5dm0kIW+rRSe6Man/OziIRer4062txMjHaVbG0iiAr83cyBjHrFKg
 J2HnskJXAeDl+ZGUKgZ6nxqgddikFYm9a8A7VmpeaRqg5GKqKus1n70PPUHlqHuLm25Td+05K7w
 ADRGdBdACeJdpztdAcdov7bF6J+qzPWN4LqqnLvvNuF64le8V/oyZjYfZB9zY025EaqTUhoRlYN
 VmUxSw6aPskTzgfqoacgVy3dhphb36rMW15qbsMWBmf+IuMxUIiN2nhsGETuRTNRNeThKak6xzZ
 1R47eEqj/KXm1fT+z0feGnXJJ2GV0bcHcMDDMhc5XjwjboUROTIhPMTaBNRCaYDi828VCsi2yI+
 9ga3z5QgkLocIYEMNftnizgAOFqljE0hz6tLe4d3tWvlm6NAsYT8PpAuoPtL/BKJrCsAyvRjZo/
 1w5ZqV638YAkra0gQ1g==
X-Proofpoint-GUID: tGFzmOL5xO6C42ZyOrNbiHuWnlbt11u4
X-Authority-Analysis: v=2.4 cv=S4LUAYsP c=1 sm=1 tr=0 ts=69a8743c cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=_PJuSq69R3b4qrRYkJAA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: tGFzmOL5xO6C42ZyOrNbiHuWnlbt11u4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040147
X-Rspamd-Queue-Id: 7FEE52064E8
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
	TAGGED_FROM(0.00)[bounces-271208-lists,devicetree=lfdr.de];
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

Add PSCI SYSTEM_RESET2 reboot-modes for monaco based boards, for use by
the psci_reboot_mode driver.

The following modes are defined:
- bootloader: reboot into fastboot mode for fastboot flashing.
- edl: reboot into emergency download mode for image loading via
  the Firehose protocol.

Support for these modes is firmware dependent.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 5d2df4305d1c1c450c7be53614da9d8c08123e66..a3542a300a27715eecc46da9b2a82ac7e76e6232 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -740,6 +740,11 @@ system_pd: power-domain-system {
 			#power-domain-cells = <0>;
 			domain-idle-states = <&system_sleep>;
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


