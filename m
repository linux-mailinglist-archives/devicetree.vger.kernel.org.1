Return-Path: <devicetree+bounces-258626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIC7KWmLcmlJmAAAu9opvQ
	(envelope-from <devicetree+bounces-258626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:41:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7CD6D7A0
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:41:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 438CF301A727
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6B63A63F5;
	Thu, 22 Jan 2026 20:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h1PHpqoM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F9dFzATu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E3ED3A6405
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769114466; cv=none; b=gkG5o8vTZ02Fg1ic2GfX0wdauaMV/twfxNEmoV8nYWD9BZg0gXOWPA3+v98u3lFT6RRWOP1pUmfqIRVj+VFtG+2x/vDYoS2xh89JvJHX/bmwwJdQY57iFFYb5Ihc4JwcEzLXIQ62NqpNrSA0+wTPlzOxHKWmnRBXBPW71CxFfck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769114466; c=relaxed/simple;
	bh=lrnppE3nIA+PsYR21EgLwMtIVX4jL+9qFPjYcDHCBr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ptYifsse+Qp+xqenpvDbcqRsixMr5RYwZ57CXOabRdSQTYW8sjqpRTF0uPgg9vfaPiaNTu6BVSXs9sluZnTEcbNcU5B4iXeF2YRr8wUd/3ntmx8X+o00IwJDgEU2yWysLPdUhAG5AEOUX/dbEdxx1ZkpTWdK4C1tY154ptegZfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h1PHpqoM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F9dFzATu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MK7wID3811480
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:40:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	At6RBSf5PLkuq5vt6TMegL9U5RwYiA5oeqLu+itdgaM=; b=h1PHpqoMwff/w+F9
	fPhzYNfvPGZVtHo/waAgcLbPe5KhMOqn4eqtGefUqnATfja6tGGNhwswVYvixnbs
	OP62S/sFqgvcUGHS+hAhSh14lN+EmG4mJn+qSv3W7Y/hDZMYErRjY8vXE3Raycu5
	fG2qo6d1pbkg099Bgp7zzbA5EWVDGQTen8Jisjqr8RAefXMfToPw0uNY5WUxDJX0
	onf6X0r51X4nNwzAW4yP8rCK1RuvDRc0AujUPcgqMXTkApQy54DZ1Pn387tts3xd
	XO/jJq7ni0pDZI9P+qk4Peer+gQ/6lCQDBwlFhvRXA41EJ6k0zyNYqEWf16uwFAi
	EAaFYw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bujq1a0n9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:40:57 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c532029e50so41273585a.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769114456; x=1769719256; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=At6RBSf5PLkuq5vt6TMegL9U5RwYiA5oeqLu+itdgaM=;
        b=F9dFzATuF7YjgOHLTLlcE68YAloDEJrMTYGb9izW988Ola8Fr+MfYJPUaC8dbuFuDF
         vRDpKDht2mAkMPRNejjXRVKtBne30GWEjf/BZn8+YsxL66byaRxLwjg9PAM15qJrLk5I
         2HQVP69/inM2azlpX0terOWzN9qyexdhDj6/KD5M3tcLy9W7Telb4C5Fp6jpJ2K/T5hA
         eWEkVnR3h4Dd0FbAg6rHaCUrhFmVOsc7gR/IKWgUnGm1p20JErb9RQNN4bDuz2bKbV2D
         v55gnzRYMcExVCaJkOSuJgnbcXeSB4czydc1xN3XCedb99rpk9nlQmsZc+P8n5TSwnP6
         xeAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769114456; x=1769719256;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=At6RBSf5PLkuq5vt6TMegL9U5RwYiA5oeqLu+itdgaM=;
        b=W5xYHKriOdd9HTPPojNWL80Hgul3x07QWStSOEwTA8OM/TJuIjwe/Tt5HruhXv2yh0
         WwD2+8y+jwoakiSHHSGlpvcKwgSaOUXFKojfUTsfor0/mkpF+oaKMt/uncS535Ez5IB2
         RjZV02aezK+baHSL+7ycZKuoJvjYmzgh0iT0oP3VlmqO1O24b5uVZl8wm/s8EP5RQrgA
         kWG3WODPHkvdjytQ+2qxS7KilwmnAzQI4JhX8NVGxq69Yo98Zt4vKu/xAaPj4wKM9Ljh
         pPBrJqjBmloZcPQ0MVyi60ipAWkaTq2Jkwx34L6s0xTXfyGT8vOZ0i2zZp+oTuBBn+tH
         dVxA==
X-Gm-Message-State: AOJu0YyuqkQRu9xX4qjFP85uY5flThEbLiL73xo5tPKW7WwikWHlj3GR
	PoyOzTW33Z1DuObDEYUQwJFu+Ymu5w6Jv48vSSYe4zKi01jP0s8OijUlsNaqS015HpyLlZzhk21
	EecEzeEXbhLJKNIfOU6JSoomG+C3daBhPFWgRECT+IhdDawu1iHkoaQEDxyBAqcCV
X-Gm-Gg: AZuq6aK30eDycLVpKx2WcAOTcNmhmEqVwZkhRQDMutAH3wGFVjz1uw4E0eDOxZbuumf
	4D6ZaO7YtlwJx2lpT8XgyMF11qf3E2D21yIQxShRvsW3w0k0cjf8vYeitAPAXLdgtlLVg950bz/
	g0oXotGhH0pCx226z5cNeSGhQr3vnYjDKtnXJamQa46cXvFkuEi1PcfUUbJtDd4gnh/vWL1LC9u
	cIZWZn0WIy490RqZ8X+v2bBsBLhBjCrozEx/E1wwFTSvxLFQYmQ3hBgADLEW5/Ojd3XkiD6Mo8j
	0q9Re2jUQBFBNyjnf9SeQXK8QrYsLGSqGZ6JYiE6zGw5lhGZ07kIXciqfU8sEgaq48U7ivBON1e
	3UVezLQ4RKFezs8wIRlqksESxrEabDewt7cSqDaibzsm/vr6g9HogBlFqk7QzBnTl9DY=
X-Received: by 2002:a05:620a:1786:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c6e2e31c38mr79737385a.6.1769114455809;
        Thu, 22 Jan 2026 12:40:55 -0800 (PST)
X-Received: by 2002:a05:620a:1786:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c6e2e31c38mr79734085a.6.1769114455205;
        Thu, 22 Jan 2026 12:40:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b419288sm16929966b.20.2026.01.22.12.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 12:40:54 -0800 (PST)
Message-ID: <5a40a0ab-6c79-41b5-8741-c1bdcdeac617@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 21:40:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/4] arm64: dts: qcom: Introduce Glymur SoC dtsi and
 Glymur CRD dts
To: Rob Herring <robh@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Qiang Yu
 <qiang.yu@oss.qualcomm.com>,
        Jishnu Prakash
 <jishnu.prakash@oss.qualcomm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
 <176910484203.3007057.6301998080301909826.robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <176910484203.3007057.6301998080301909826.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7SsARmRdN0udDEEImVPhzbKeYYb35JAc
X-Authority-Analysis: v=2.4 cv=O480fR9W c=1 sm=1 tr=0 ts=69728b59 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=qC_FGOx9AAAA:8
 a=gEfo2CItAAAA:8 a=_jlGtV7tAAAA:8 a=YXyXsvO4i0MbaF_IcjgA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=fsdK_YakeE02zTmptMdW:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=nlm17XC03S6CtCLSeiRr:22
X-Proofpoint-GUID: 7SsARmRdN0udDEEImVPhzbKeYYb35JAc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDE1OCBTYWx0ZWRfX1TdnHyAeuZwV
 7WbHilsvDugtycbHv4+Zbsb6ke7f/MGAk3C92b8AnWRD6IgcJO44G9jBbXnQ3w7dhvcMeDXOmrh
 Kib21ev1biKnraakT2h6aB3m+Odchb2KA01Wnj0oFOwpb1e72aw3Hrsod6ewN3SvKUqYxiaTcuU
 VIXQ2YledNFoKH5IUfcbhyZZOpMGVqu6ho4s/MdMyeCvEfGWKRIvMwyWM3VSL2Kbnbirq+3GbRG
 JwUBI9eSyd++RF1Hjt4N5qynR1rlI6UXp8D4NloBVnKRF/fey1XyudLJaCvOoj5DOd9Zs9fN92f
 n0kGtUIdBOKSfZRd5wzTemmEl/ipiEQOf0KqYnD3UdrzVNnD5+vWa6rCqLwcqWMl350BN03RwPO
 Yqnxns6XdQLAyrBm+Bt7dFUN0h8NZzv9iw3O2mUVcy6TCQJ5SDhwU0gEX6cn0UbLVOBmX4H0Gmx
 Y5GGO0DF09k+3W38CZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_04,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-258626-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,codelinaro.org:url,devicetree.org:url,1bf0000:email,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4E7CD6D7A0
X-Rspamd-Action: no action

On 1/22/26 7:07 PM, Rob Herring wrote:
> 
> On Thu, 22 Jan 2026 20:53:57 +0530, Pankaj Patil wrote:
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
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>> Changes in v6:
>> - Moved pmic thermal zones to their respective pmic dtsi files
>> - Link to v5: https://lore.kernel.org/r/20260122-upstream_v3_glymur_introduction-v5-0-8ba76c354e9a@oss.qualcomm.com
>>
>> Changes in v5:
>> - Added opp entries for pcie nodes
>> - Dropped qup-memory interconnect from uart nodes
>> - Update trip1 type to critical for pmic thermal zones
>> - Alignment and newline fixes according to comments
>> - Link to v4: https://lore.kernel.org/r/20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com
>>
>> Changes in v4:
>> - Enabled PCIe SMMU for all 4 PCIe instances
>> - Updated dispcc required opps level to "rpmhpd_opp_low_svs"
>> - Updated watchdog compatible
>> - Renamed gic-its to msi-controller
>> - Updated GCC clocks property to 43 from 44
>> - Moved cpu-idle-states to domain-idle-states
>> - Fixed alignment and zero padding issues according to review comments
>> - Dropped glymur-pmics.dtsi
>> - Moved pmic thermal zones from board dts to soc dtsi
>> - Link to v3: https://lore.kernel.org/r/20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com
>>
>> Changes in v3:
>> - Enabled system-cache-controller
>> - Squashed all initial features to boot to shell with nvme as storage
>> - Updated tsens nodes according to comments
>> - Merged tcsr and tcsrcc node
>> - Addressed review comments
>> - Link to v1: https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com
>>
>> Changes in v2:
>> - Series was sent erroneously
>> - Link to v1: https://lore.kernel.org/r/20250925-v3_glymur_introduction-v1-0-5413a85117c6@oss.qualcomm.com
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>
>> ---
>> Pankaj Patil (4):
>>       dt-bindings: arm: qcom: Document Glymur SoC and board
>>       arm64: defconfig: Enable Glymur configs for boot to shell
>>       arm64: dts: qcom: Introduce Glymur base dtsi
>>       arm64: dts: qcom: glymur: Enable Glymur CRD board support
>>
>>  Documentation/devicetree/bindings/arm/qcom.yaml |    5 +
>>  arch/arm64/boot/dts/qcom/Makefile               |    1 +
>>  arch/arm64/boot/dts/qcom/glymur-crd.dts         |  601 +++
>>  arch/arm64/boot/dts/qcom/glymur.dtsi            | 5913 +++++++++++++++++++++++
>>  arch/arm64/boot/dts/qcom/pmcx0102.dtsi          |  187 +
>>  arch/arm64/boot/dts/qcom/pmh0101.dtsi           |   68 +
>>  arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi    |  144 +
>>  arch/arm64/boot/dts/qcom/pmh0110-glymur.dtsi    |  144 +
>>  arch/arm64/boot/dts/qcom/pmk8850.dtsi           |   70 +
>>  arch/arm64/boot/dts/qcom/smb2370.dtsi           |   45 +
>>  arch/arm64/configs/defconfig                    |    5 +
>>  11 files changed, 7183 insertions(+)
>> ---
>> base-commit: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b
>> change-id: 20251007-upstream_v3_glymur_introduction-5a105b54493d
>> prerequisite-message-id: <20260121-glymur-pmic-mfd-v1-1-2aab4f21e79c@oss.qualcomm.com>
>> prerequisite-patch-id: bd5a4703a5a7fc530418337680cf1e2ea1518f35
>> prerequisite-message-id: <20251215-knp-pmic-leds-v3-0-5e583f68b0e5@oss.qualcomm.com>
>> prerequisite-patch-id: 6bbaff642cfd1f1386ff0ccd746739b68cdbeb45
>> prerequisite-patch-id: e30603778b23b7f7586b1c01a362e45af7bd0aa3
>> prerequisite-message-id: <20260121110828.2267061-1-pankaj.patil@oss.qualcomm.com>
>> prerequisite-patch-id: 14469fd166b31b251b98bf25e783ab6f57ddd13a
>>
>> Best regards,
>> --
>> Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>
>>
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> This patch series was applied (using b4) to base:
>  Deps: looking for dependencies matching 4 patch-ids
>  Deps: Applying prerequisite patch: [PATCH] dt-bindings: mfd: qcom,spmi-pmic: Document PMICs present on Glymur
>  Deps: Applying prerequisite patch: [PATCH v3 1/2] dt-bindings: leds: leds-qcom-lpg: Add support for PMH0101 PWM
>  Deps: Applying prerequisite patch: [PATCH v3 2/2] dt-bindings: leds: qcom,spmi-flash-led: Add PMH0101 compatible
>  Deps: Applying prerequisite patch: [PATCH v2] dt-bindings: dma: qcom,gpi: Update max interrupt lines to 16
>  Base: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b (use --merge-base to override)
> 
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
> 
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com:
> 
> arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1bf0000 (qcom,glymur-pcie): compatible:0: 'qcom,pcie-x1e80100' was expected
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml

+Mani you sent a 'b4 ty' for this months ago, what happened?

https://lore.kernel.org/linux-arm-msm/176189884156.5303.14323602106505981794.b4-ty@kernel.org/

The ipcc one should be handled by Rob now:

https://lore.kernel.org/linux-arm-msm/20260116162057.GA1681736-robh@kernel.org/

And watchdog is perhaps in Guenter's queue

https://lore.kernel.org/linux-arm-msm/de7f0b8a-a355-42c1-ac3c-d0b5de754711@roeck-us.net/

Konrad

