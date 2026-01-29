Return-Path: <devicetree+bounces-260748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mM69Dbn+emmHAQIAu9opvQ
	(envelope-from <devicetree+bounces-260748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:31:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9668FAC3D3
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:31:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5E6B300CE75
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B22318BB5;
	Thu, 29 Jan 2026 06:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QDMk/hfV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HfUGKuLK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85DB8219303
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769668254; cv=none; b=KpC+dpWhRWvhtPvX5ukRg9tyGAlCPCAoL7Lu5oAtFsrB1deru65b37kYGHcDXirYGUihY0SCrKtfcM7/mAZERXEtDKrqyrfCAVF2jRDxc55abTrGKelhTotI7EQXfEfqou3WjQ/qWxNOqaiEi9lQJINuuWoHlBh7WrEgiayjUGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769668254; c=relaxed/simple;
	bh=87XlqUryFxKfOlGGGUf4oyg1Zt28wFuqD3rWBa76BQQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n9WMn6YAgiqcFlKp85zNhZjqPADnU66XbKXv+9STrHVSonSyCUvmMwLCLI7RTSzfYDwuBOobXcv7og55HxGLkWXJuWRuOkIa4qqoy6lCPcHmpOE1d5io5iCqgyeaY17NSHy5Ux2tsqml6CnucCO/HDX/O47han5wCL8Q1zg67HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QDMk/hfV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HfUGKuLK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T2p7Cu3144644
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FLgSThlSXezovD5rJsCLd/5tekcY5IFYlovNeGkaK4A=; b=QDMk/hfV3YZOAGaS
	H8H5AN+667JvUvPxws+V3esRxhNIdDY0WROt8QprYW/TMYy5QHeaj1zMS/wQj/pO
	A9OePwnYUSjuXsPGBWPTFP+IppCjjLSY2xPt5PF8Zd9WpP9XsvghpC1xP3AJbie4
	Dv1Qy9eBfGTeb0rZOiVQ/OH7vKN9EQdxCpntk8JG15m/Ax/RrssKXIV9ozq6FkI1
	vGrGZ6I8f5h7R/IRTCp7kpl12p3LDHEfC3tv1fhU7tzDs98GiHnBM3Yrf5xJzCk0
	e8Zkra9cjfoiOiqLlg4eKZDn2iGGYbeTZuq/AxrM0j8CmXn4xH16b116XMCosHFK
	mgNYvg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byqpxhtwx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:30:51 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a8c273332cso8343405ad.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 22:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769668250; x=1770273050; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FLgSThlSXezovD5rJsCLd/5tekcY5IFYlovNeGkaK4A=;
        b=HfUGKuLKQ7w3CjjktLwNL3FnaBmut8zwJHdcet9BOgykk2pXhdI44ghg39Ub1rkPEJ
         w3bLcHIaZdmKJzxyCrLFb3UAP8m3/8kqcyOyzQOjnf/RPJbn246xT3FpEMDvL2KyRg7J
         uCvYNawScYLT03rXUx18ioSSALINzKdHSQYd5/0pQGh1lPyzpzi4XgvACJPQvu85ohn9
         kBtvbr/3e7FZaA+rViBnQ9X47b1D/xVMOpOuhF1LP6SqO/+te6E1PVRBk23DsOT3ODl6
         U8iR70JRYPQucU40vvFsy09zzYcEqipTjU7BeEjMtLeHpYN8SNofsBwgKJYmClbEjeLD
         eyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769668250; x=1770273050;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FLgSThlSXezovD5rJsCLd/5tekcY5IFYlovNeGkaK4A=;
        b=cJBXJjjQf/0UYMdrfrF1NOxbho7D2xXQgVnwBowooSwMvL93sNWa6BRB/j9rD6mWow
         iNwk2HE0uTrSRJQGF8HNgIa1sjMnMD4thdmfWq74oDox2RSG5oVFWrDE1di7IvdC2Zxl
         zvhWTLe4LgNiuWMIebLTPQMPqzBhGijqf4N+SxDq4PZyNSc3/oloxxIDzYbHy/UtbL1R
         3Sdj0qoPIgpGb/fathMg9lkrG6YbwgcukacajGicQrTAoh6nCH980Iu1sXTUKk6RsiS2
         hKCA/FyVuiGLGMUEcnnfYxyBrmm53gesw5O6fjR1JHHVAtS1uQtiNAflfAFoX0CLjEmO
         gMbA==
X-Forwarded-Encrypted: i=1; AJvYcCWoMDI+FOtGXogH5jHfiEHiJZIaoTGrC+YXhI+Oa8dulcgte440b3b6oYe5XA9QI3L1okADOYzXvkQK@vger.kernel.org
X-Gm-Message-State: AOJu0YwJwZGaAMuHlgQVEE2J78Qvf/pGuNX+d8m6daemOoB80KuwzXkL
	6QA26wxZgJfUIn/GYCNrYTdpurmDn15u09oEOwucpETY5mGChVQtu5NBI/+pyKdJAVqCqi7eIgH
	w74tA9JxX2txjo49vf7KLd96ropkYMpvlCv+GLHVcrkHNABXnUeU+zOLKxmE6kMdK
X-Gm-Gg: AZuq6aICj08a+o/O9QGUq7RyGUiUwTMdl/i03TSU85lszT8mPtdUEklsED5T4GrXyw1
	bSSE7U+LIz/AbvGYP6ZX0l61O/NnTQOO3Ju2BcA+/N8byIF827m0oe+Y7VhmWfKchHto+OwuS8G
	yngbTBBOlU+bEuM/+PVNK5yt+493+/8JMGLhc/2Hw1axxXlozcVteWKEAAScWfJRO2H4EuKtcBH
	Mtdf7YjBPTblGQVPp2baKrrLCChO2Ppi7YFpiTTZvCfCfdKeCzpT0Bey2qmEB7Y24lVrMGtAXgd
	kQXKmP5+ARXTHJ5NIYV78E1bnr8xs+TrAE3nF5okA2m45BeSrlo5GkdYaP9Ngawm2vkVVv450Q+
	q9wBh1OB2FT98x6/vPH9E/tVzQQ0YddfUjPghCXpRk9LLhR2RO26zkc22eW3whWPK+swNbzDvWd
	r5Qvr6qanNxnORSmjXlp9ZWCWiswVc
X-Received: by 2002:a17:902:db0c:b0:29e:9c82:a920 with SMTP id d9443c01a7336-2a870d4cd90mr83400705ad.6.1769668250262;
        Wed, 28 Jan 2026 22:30:50 -0800 (PST)
X-Received: by 2002:a17:902:db0c:b0:29e:9c82:a920 with SMTP id d9443c01a7336-2a870d4cd90mr83400395ad.6.1769668249727;
        Wed, 28 Jan 2026 22:30:49 -0800 (PST)
Received: from [10.190.200.191] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5d9a70sm39749355ad.77.2026.01.28.22.30.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 22:30:49 -0800 (PST)
Message-ID: <d587edd9-926d-4011-924c-e3c27263d5f2@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 12:00:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/4] arm64: dts: qcom: Introduce Glymur SoC dtsi and
 Glymur CRD dts
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, Vinod Koul <vkoul@kernel.org>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
 <75lzykd37zdvrks5i2bb4zb2yzjtm25kv3hegmikndkbr772mz@w2ykff3ny45u>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <75lzykd37zdvrks5i2bb4zb2yzjtm25kv3hegmikndkbr772mz@w2ykff3ny45u>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: tlGkUKRwi9W74QAJqc1h7Pq2DOrpmCA7
X-Proofpoint-ORIG-GUID: tlGkUKRwi9W74QAJqc1h7Pq2DOrpmCA7
X-Authority-Analysis: v=2.4 cv=dfSNHHXe c=1 sm=1 tr=0 ts=697afe9b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=qC_FGOx9AAAA:8
 a=gEfo2CItAAAA:8 a=0dIRaPp63eEJG7gPAZYA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=fsdK_YakeE02zTmptMdW:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAzOCBTYWx0ZWRfX6kRnVMRLCDyP
 vaKXwmuwUHdT8GPzk33tpu/SJe6AFWJORh+XWoBbXRlNFJoU+53DGxBlOpT1qmiY22LP1/fegJu
 4szeNNfHv1/O0CSU4B8yM3AvhEnbHYLPLjTcMeDwzYNloHfNuUOBx4T9Oh2yNM00YD0sXH2Bqf8
 ZTQtc06ksxpvAA8kNwoKHY4fs9AxlVP1z88G8oxHDUnZJpxs/KRkyVBrN4NH5/O+UjukZjsQY0k
 2f488r53OLTxd8s05cHXLOsibYEBm5zq/KiApr0SkjGmdbhll3FciE7QSFmanKqFdmX7eVBD4Me
 jBG1NXPoGiq15W0X/Np3ElmfaIRKGctX3N2L7EyTytDiOOSOiruStO89Vq/uD5QgQ2HgXo7ncqd
 3O7PkCfvyFcApwE/jPy46tit1HQIjc6EqAdzS4dQR/9UFItWu6PO4Tbdt3D+6cYbzRRCwCknhB1
 bkLLn1OwUPL9WHlJ+2w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290038
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-260748-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:url,qualcomm.com:dkim,0.0.0.1:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,ee00:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.12.53.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9668FAC3D3
X-Rspamd-Action: no action

On 1/29/2026 6:51 AM, Bjorn Andersson wrote:
> On Thu, Jan 22, 2026 at 08:53:57PM +0530, Pankaj Patil wrote:
>> Introduce dt-bindings and initial device tree support for Glymur,
>> Qualcomm's next-generation compute SoC and it's associated
>> Compute Reference Device (CRD) platform.
>>
>> https://www.qualcomm.com/products/mobile/snapdragon/laptops-and-tablets/snapdragon-x2-elite
>> https://www.qualcomm.com/news/releases/2025/09/new-snapdragon-x2-elite-extreme-and-snapdragon-x2-elite-are-the-
>>
>> The base support enables booting to shell with rootfs on NVMe,
>> demonstrating functionality for PCIe and NVMe subsystems.
>> DCVS is also enabled, allowing dynamic frequency scaling for the CPUs.
>> TSENS (Thermal Sensors) enabled for monitoring SoC temperature and
>> thermal management. The platform is capable of booting kernel at EL2
>> with kvm-unit tests performed on it for sanity.
>>
>> Added dtsi files for the PMIC's enabled PMH0101, PMK8850, PMCX0102,
>> SMB2370, PMH0104, PMH0110 along with temp-alarm and GPIO nodeS.
>>
>> For CPU compatible naming, there is one discussion which is not specific
>> to Glymur, Kaanapali and Glymur use the same Oryon cores.
>> https://lore.kernel.org/all/20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com/
>> We've kept the "qcom,oryon" compatible
>>
>> Features enabled in this patchset:
>> 1. NVMe storage support
>> 2. PCIe controller and PCIe PHY
>> 3. RPMH Regulators
>> 4. Clocks and reset controllers - GCC, TCSRCC, DISPCC, RPMHCC
>> 5. Interrupt controller
>> 6. TLMM (Top-Level Mode Multiplexer)
>> 7. QUP Block
>> 8. Reserved memory regions
>> 9. PMIC support with regulators
>> 10. CPU Power Domains
>> 11. TSENS (Thermal Sensors)
>> 12. DCVS: CPU DCVS with scmi perf protocol
>>
>> Dependencies:
>>
>> dt-bindings:
>> 1. https://lore.kernel.org/all/20260121-glymur-pmic-mfd-v1-1-2aab4f21e79c@oss.qualcomm.com/
>> 2. https://lore.kernel.org/all/20251215-knp-pmic-leds-v3-2-5e583f68b0e5@oss.qualcomm.com/
>> 3. https://lore.kernel.org/all/20260121110828.2267061-1-pankaj.patil@oss.qualcomm.com/
>> 4. https://lore.kernel.org/all/20260111155234.5829-1-pankaj.patil@oss.qualcomm.com/
>>
>> Linux-next based tree with Glymur patches is available at:
>> https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/b4/v6_glymur_introduction
>>
> 
> FWIW, I applied these patches onto next-20260128 to see if things has
> improved since Rob's report and I get:
> 
> $ make qcom/glymur-crd.dtb CHECK_DTBS=1
>   DTC [C] arch/arm64/boot/dts/qcom/glymur-crd.dtb
> qcom/glymur-crd.dtb: dma-controller@800000 (qcom,glymur-gpi-dma): interrupts: [[0, 588, 4], [0, 589, 4], [0, 590, 4], [0, 591, 4], [0, 592, 4], [0, 593, 4], [0, 594, 4], [0, 595, 4], [0, 596, 4], [0, 597, 4], [0, 598, 4], [0, 599, 4], [2, 129, 4], [2, 130, 4], [2, 131, 4], [2, 132, 4]] is too long
>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> qcom/glymur-crd.dtb: dma-controller@a00000 (qcom,glymur-gpi-dma): interrupts: [[0, 279, 4], [0, 280, 4], [0, 281, 4], [0, 282, 4], [0, 283, 4], [0, 284, 4], [0, 293, 4], [0, 294, 4], [0, 295, 4], [0, 296, 4], [0, 297, 4], [0, 298, 4], [2, 124, 4], [2, 125, 4], [2, 126, 4], [2, 127, 4]] is too long
>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> qcom/glymur-crd.dtb: dma-controller@b00000 (qcom,glymur-gpi-dma): interrupts: [[2, 76, 4], [2, 77, 4], [2, 78, 4], [2, 79, 4], [2, 80, 4], [2, 81, 4], [2, 82, 4], [2, 83, 4], [2, 84, 4], [2, 85, 4], [2, 86, 4], [2, 87, 4], [2, 88, 4], [2, 89, 4], [2, 90, 4], [2, 91, 4]] is too long
>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> qcom/glymur-crd.dtb: pmic@1 (qcom,pmh0101): led-controller@ee00:compatible:0: 'qcom,pmh0101-flash-led' is not one of ['qcom,pm6150l-flash-led', 'qcom,pm660l-flash-led', 'qcom,pm7550-flash-led', 'qcom,pm8150c-flash-led', 'qcom,pm8150l-flash-led', 'qcom,pm8350c-flash-led', 'qcom,pm8550-flash-led', 'qcom,pmi8998-flash-led']
>         from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
> qcom/glymur-crd.dtb: pmic@1 (qcom,pmh0101): pwm:compatible: 'oneOf' conditional failed, one must be fixed:
>         ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm'] is too long
>         'qcom,pmh0101-pwm' is not one of ['qcom,pm660l-lpg', 'qcom,pm8150b-lpg', 'qcom,pm8150l-lpg', 'qcom,pm8350c-pwm', 'qcom,pm8916-pwm', 'qcom,pm8941-lpg', 'qcom,pm8994-lpg', 'qcom,pmc8180c-lpg', 'qcom,pmi632-lpg', 'qcom,pmi8950-pwm', 'qcom,pmi8994-lpg', 'qcom,pmi8998-lpg', 'qcom,pmk8550-pwm']
>         'qcom,pmh0101-pwm' is not one of ['qcom,pm6150l-lpg']
>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8550-pwm']
>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8937-pwm']
>         'qcom,pm8150l-lpg' was expected
>         'qcom,pm8916-pwm' was expected
>         from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
> qcom/glymur-crd.dtb: led-controller@ee00 (qcom,pmh0101-flash-led): compatible:0: 'qcom,pmh0101-flash-led' is not one of ['qcom,pm6150l-flash-led', 'qcom,pm660l-flash-led', 'qcom,pm7550-flash-led', 'qcom,pm8150c-flash-led', 'qcom,pm8150l-flash-led', 'qcom,pm8350c-flash-led', 'qcom,pm8550-flash-led', 'qcom,pmi8998-flash-led']
>         from schema $id: http://devicetree.org/schemas/leds/qcom,spmi-flash-led.yaml#
> qcom/glymur-crd.dtb: /soc@0/arbiter@c400000/spmi@c426000/pmic@1/led-controller@ee00: failed to match any schema with compatible: ['qcom,pmh0101-flash-led', 'qcom,spmi-flash-led']
> qcom/glymur-crd.dtb: pwm (qcom,pmh0101-pwm): compatible: 'oneOf' conditional failed, one must be fixed:
>         ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm'] is too long
>         'qcom,pmh0101-pwm' is not one of ['qcom,pm660l-lpg', 'qcom,pm8150b-lpg', 'qcom,pm8150l-lpg', 'qcom,pm8350c-pwm', 'qcom,pm8916-pwm', 'qcom,pm8941-lpg', 'qcom,pm8994-lpg', 'qcom,pmc8180c-lpg', 'qcom,pmi632-lpg', 'qcom,pmi8950-pwm', 'qcom,pmi8994-lpg', 'qcom,pmi8998-lpg', 'qcom,pmk8550-pwm']
>         'qcom,pmh0101-pwm' is not one of ['qcom,pm6150l-lpg']
>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8550-pwm']
>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8937-pwm']
>         'qcom,pm8150l-lpg' was expected
>         'qcom,pm8916-pwm' was expected
>         from schema $id: http://devicetree.org/schemas/leds/leds-qcom-lpg.yaml#
> qcom/glymur-crd.dtb: /soc@0/arbiter@c400000/spmi@c426000/pmic@1/pwm: failed to match any schema with compatible: ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm']
> 
> So, we're still missing a few dependencies.
qcom,pmh0101-flash-led and qcom,pmh0101-pwm are part of lee's for-leds-next
tree but don't see them in next
https://git.kernel.org/pub/scm/linux/kernel/git/lee/leds.git/log/?h=for-leds-next

The interrupt maxItems has been acked by rob but not picked up by vinod yet
https://lore.kernel.org/all/20260121110828.2267061-1-pankaj.patil@oss.qualcomm.com/
> 
> 
> Booting the system I get a ton of errors from PCIe in the kernel log:
> 
> debugfs: 'opp:5000000' already exists in 'soc@0-1c00000.pci'
> 
> # dmesg | grep -E 'debugfs: .+ already exists' |wc -l
> 508
> 
> The system does eventually boot, and I was happy to see that we do end
> up finding the PCIe devices after all.
> 
> Regards,
> Bjorn


