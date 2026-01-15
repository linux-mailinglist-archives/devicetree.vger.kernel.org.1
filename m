Return-Path: <devicetree+bounces-255382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8485D22A36
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8D113043938
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A02D2F362B;
	Thu, 15 Jan 2026 06:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mMOHN5nG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MVCjvg1Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0972EDD57
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459762; cv=none; b=W7tCjvwKcfhamqc1T5mEnGw55J+wydDEbrsZax4iXyI7NfWAQpLzSfy/7wCY14juHZWKO6uqmt56UOudLRzdLooYp20pbiSJ9W+kMNh+OrhudKE3WwH8RvbC2Tbp6YE/Eiy/L9urP+Llzp2J7kPpGLI6T5hh9aKHYdBv8ZwwXEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459762; c=relaxed/simple;
	bh=i6IjVT0PVjHWCKuqfNYPEzUmuVN9r+s942D4D6I2g+k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PkFyjirBmW0PXbIepJ3dwHy/KzGe6UMGIEfp8vKR8skBthZ5cN1VjdCtVZVRUDCxEwZaB5GFWP+IysQKPvJrfmvA8Fjog4qTWnpPXQ97oTxH2me6jIh3Csgc1Ar964CmFE0YWhuHuh9nHa0gTJeZd015M0sewy3iBJ/ybJv661Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mMOHN5nG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MVCjvg1Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fkvv606449
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=PdoDjw1bltD+OxcYidWLfG
	AM8l0mMCYuDPsGC6qHPmQ=; b=mMOHN5nGMmigepvvQ9rmelGJMoUoKdGk8HvWQa
	fe67NGmUGW362ESwtK62Fw+gXj4o5wdQeTWA7HTdN6V7sgiA/mp5v/gSgvgR0/Kb
	8Veclky/1gyTceSiYC1vthfoW4LOQKfkxyGsDTc551I9KU2Y50E+ZqtqIkVDBxJT
	MtJ+iFKCVHPsyrYfPRahf49+dhR3eMIMLxWdUjYh+SzDYRwE1Zko3OP2NDI/kuwQ
	eOegpQvlERBrY3s/TEM0pW92vXlMfpzaUXwGVa28WRmOPxRa42ldvXSYNXokZN87
	oNydN1esceSFHq0rn14PWpW6DxLXKt+sM+tc0r05QgXocOoQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bptna03bn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:16 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2adc3990fecso403912eec.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768459756; x=1769064556; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PdoDjw1bltD+OxcYidWLfGAM8l0mMCYuDPsGC6qHPmQ=;
        b=MVCjvg1ZhE3sK4WwAhKucTwldibrwyDyNIi4oM6ll0vzBIzuHqNXICTSTZlPen4Cwx
         KY6zr6QzbB/I/DsMF+msSMcsBouU4ODNh5FVtzZJ9RZrw6tFWJY1WuR2QnXWP9lwfrK4
         2jUw+VgPUPweXDyDovMhHe6+1T7YOvTxoaf4oV8fxZ3CQYY0ISBg69KSy1ereufyYK8r
         hUDuFzkuqRS0/47EpckDAMC3fzykCRQbPtxEwW4MatbpF5natOWXefayvAiMkq7hRiRs
         jQsMlL8AvcQZCY6CTSs9Z3d9gRyHhc/S9mrO74s+JLE8OB3DJHZPLjUq7UqgwOD+roXm
         6CNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459756; x=1769064556;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PdoDjw1bltD+OxcYidWLfGAM8l0mMCYuDPsGC6qHPmQ=;
        b=bF6a0K9k7glfddHC6n6EuMmFr4IQ/n0vnS+gQR6ohwHye4ONlc6XnZZu+3ZV+YPYHl
         eRwnYgERzOdzN2PVFUUVIAINp7apMVuzP1HZt85vZAfkMA2LLL9FTX72P3hFauv3W41z
         HttXCwj0Peprq0A5MD/TQdFW0N+Fvl7pEY5aSOQXtGYSp2Tq253WnE1OMJxs114qQNtm
         9HvZcTIAV+oOxHmip722cAeRxc/Dqu1O/LDvmIBXpxwFyRYJcjbT5cBe+N17OAtKd5aG
         UdzyI8TDMAF7+L+fe26rPI5SyrXORY3aSv78kHWotSkbGazHReNsgtVMoVm3QwBU3wG1
         pVtw==
X-Forwarded-Encrypted: i=1; AJvYcCVC+sHImys5mUy3i7Squ7RcOpbt0xdvweA7eQIT0IM89WdBiM01H/PFEy5cavZ2Q8O0I7zjaJgr2mQE@vger.kernel.org
X-Gm-Message-State: AOJu0YwMzorCFEKI+REvN51CPpoImqWgds1EYla1fPWSIeEQisyut2lT
	UMOG7m22Dla52t+C9nGzCSG+pSUk7qH7Ij8yVr1FIiql0U54vIyVrmIj7pJQmdGKQR3+9EbRkx7
	eajDQjA9r7uy788RHSk6BmCm1uzPQMbE9ok8h2WxZ9MisI2uoa+L7HVuc1i2hYISJ
X-Gm-Gg: AY/fxX6GSWSft7/d020/DdHuo8U0nace4pvhfb6X//bLVhm827zuZDWLXvjJaXLhdWX
	zd5nW+P6IpgjFfzTjvx/WDvbMjiiBMMSZ8OMdPdNFMeoppgPpgrRI+6QosTKxiZS3yQc587aZm3
	XAyfIULrh8B4njkFvVT2Qr6PukvAwPpEb5NzVX5ArbQuAD7gp98zVDwYepRqqiNBTgOcy/cRF2d
	rpFAuy27rI2ut/lghtuOIdNbFZqVXHZ8YESBJjRbpCSVS57QrNoT9MdlMX8ixXoMJHs5saj6q90
	Ajvz8k9OK0YYQG3vylIUvxT9fUXwNOywG0x2FVDSFEOaPpPEbDDeH9EPQuQDQEuBHAGUZrzGzgM
	WgB10wCncGw2NyMcM+x0JCrQDh7yWNj0/Rk9tlf4m/qLEgoFsezsel1f2wtqU
X-Received: by 2002:a05:7301:4083:b0:2ac:2f90:8e03 with SMTP id 5a478bee46e88-2b65b9d9c27mr3173283eec.7.1768459755753;
        Wed, 14 Jan 2026 22:49:15 -0800 (PST)
X-Received: by 2002:a05:7301:4083:b0:2ac:2f90:8e03 with SMTP id 5a478bee46e88-2b65b9d9c27mr3173226eec.7.1768459755111;
        Wed, 14 Jan 2026 22:49:15 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b480dea94fsm3259143eec.24.2026.01.14.22.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:49:14 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v3 00/10] arm64: dts: qcom: kaanapali: Add more features
Date: Wed, 14 Jan 2026 22:49:02 -0800
Message-Id: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN6NaGkC/2WP3WrDMAyFXyX4ei7+iVM7jLH3GL1Q/LOY1XFqp
 2Gj9N2npOyiDIHRMdJ3jm6k+hJ9JX1zI8WvscY8oZAvDbEjTJ+eRoeaCCY6xnlLv6aZuqXSFKu
 lR2CdDEZK64Dgylx8iN877uOEeoDq6VBgsuMGQYDcxsZYl1x+dtOVb8MbX3Eh1DN/FZRR0FiSB
 6eEfs+1Hi5XONuc0gEfcro/fIu/XDH98jAnydcKe/q+eX0KX3zKi59LRnyL+GADG1jrGIfwD/9
 G/q7YfuLSNyxoJS0IOBrtwRknWieNxc4MzHSd5soqLQCD3X8B6Kc4IF4BAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768459754; l=2813;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=i6IjVT0PVjHWCKuqfNYPEzUmuVN9r+s942D4D6I2g+k=;
 b=Sl6B8BsqT4p4509eG0awf0b4GlYcjhE5wYMofarRzaYFE2FQH09jQyZ7EbXgrhr0kdSYvy4v6
 +OgT9ITJf3vCx9xlURj5cDxs87oAsZfyrnVTk9mLYIPE+QH5HbBClsU
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: kTvUWvWUcI8YJ9HDhkfshdgrkvzLq0pc
X-Proofpoint-ORIG-GUID: kTvUWvWUcI8YJ9HDhkfshdgrkvzLq0pc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0MyBTYWx0ZWRfX/HfMCpWydkrp
 hgtZFSz8Hv2B/iCWERvvxCllwDsLR5p7/VdVPQVoTS/lQIJxoF9nqJa8SdXi/NVyaF252mYrQlT
 wfTU2K5CnZJZnI1fmF1nZZXA/IBYXYCXfKdiajju2laX/4Ef/sMcOwQq7Q5kDidW4jtgKqfYb/w
 qI9FeBpWpQwqGLv0B3eW3kvDxlpyp2QKZfj10UKOCrWvHXZwIdFkhd2No+o98M5dsqvSdMTEDU/
 dElybfnir4SGarQOVzgZ5O87Sh6aZDJp9MYLbOEuHYLugunpY/1S+8wfr5/haHHRqKGJ0M/aHjm
 8ys+wnPApPIiMpOI0+P5UZKVN/So616K02VM9R2MCG4GSc1/PB75pgHPWSwoMoZivQnaMlxoWJy
 m97OII47vrxnjkxHIE7RV9zLvqWGs6JSsKZ6K8qHJlVJoCDQVqLLiCr5u6cf1g586EkITiQ2XMn
 wz2+B5Sqt6DBEJ3oR5A==
X-Authority-Analysis: v=2.4 cv=fsHRpV4f c=1 sm=1 tr=0 ts=69688dec cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=4LptFnmNR7OdvzKBXfYA:9 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150043

Add new features on the Kaanapali Platform including:

- TSENS and thermal zones
- CoreSight nodes to enable trace paths such as TPDM->ETF and STM->ETF.
- QUPv3 serial engine
- ADSP and CDSP with fastrpc and smp2p
- Audio(enabled on MTP only)
- Multimedia clock including display/video/camera/gpu

dependency:
- adsp/cdsp binding: https://lore.kernel.org/all/20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com/ - reviewed 

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
below binding are alreay applied before but somehow lost in the latest linux-next tag:
- ipcc: https://lore.kernel.org/all/20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com/
- cpufreq: https://lore.kernel.org/all/20251021-knp-cpufreq-v2-1-95391d66c84e@oss.qualcomm.com/
which may cause dt check err which is not relevant to this patch series.

---
Changes in v3:
- seperate patch in function
- pick remoteproc/audio/MM clk patch
- Link to v2: https://lore.kernel.org/r/20251225-knp-dts-misc-v2-0-a8a8a31fd528@oss.qualcomm.com

Changes in v2:
- picked latest coresight patch form: https://lore.kernel.org/all/20251205-add-coresight-nodes-for-kaanapali-v1-1-d3d2099b9b24@oss.qualcomm.com/
- Link to v1: https://lore.kernel.org/r/20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com

---
Jie Gan (1):
      arm64: dts: qcom: kaanapali: add coresight nodes

Jingyi Wang (3):
      arm64: dts: qcom: kaanapali: Add ADSP and CDSP for Kaanapali SoC
      arm64: dts: qcom: kaanapali-mtp: Enable ADSP and CDSP
      arm64: dts: qcom: kaanapali-qrd: Enable ADSP and CDSP

Jyothi Kumar Seerapu (1):
      arm64: dts: qcom: kaanapali: Add QUPv3 configuration for serial engines

Manaf Meethalavalappu Pallikunhi (1):
      arm64: dts: qcom: kaanapali: Add TSENS and thermal zones

Prasad Kumpatla (2):
      arm64: dts: qcom: kaanapali: Add support for audio
      arm64: dts: qcom: kaanapali-mtp: Add audio support (WSA8845, WCD9395, DMIC)

Taniya Das (2):
      arm64: dts: qcom: kaanapali: Add support for MM clock controllers for Kaanapali
      arm64: defconfig: Enable Kaanapali clock controllers

 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts |  240 ++
 arch/arm64/boot/dts/qcom/kaanapali-qrd.dts |   14 +
 arch/arm64/boot/dts/qcom/kaanapali.dtsi    | 4846 ++++++++++++++++++++++++++++
 arch/arm64/configs/defconfig               |    4 +
 4 files changed, 5104 insertions(+)
---
base-commit: 0f853ca2a798ead9d24d39cad99b0966815c582a
change-id: 20260114-knp-dts-misc-7a063f933cda
prerequisite-message-id: <20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com>
prerequisite-patch-id: afd581c1ad048b1b9d5cb13cc667a5efbdfd1bad
prerequisite-patch-id: 554f737dd82cedf873d73db34d735c95c28b9cd3

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


