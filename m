Return-Path: <devicetree+bounces-274070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAF/B45lsWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:52:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9587A263E17
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C81393192A7A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A934E27B327;
	Wed, 11 Mar 2026 12:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nlhq3Zis";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mnirp7Pz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19947253F05
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773233375; cv=none; b=JXduKl/nasG/bsPJ0Dzqyzsdfn+wYzby/So9VDGxtP7GTLbqGpr8oY5ShJXKwlKLqOOv54xrZiOB0uAqIah1jPiboEn6syBmuvU4Q44Lk6n5fEdl4E2lvSeLB1JwFjzkl/5xy8rCYjwG/sxwsdDX7su8oD1ztHWbI1BCPVwgToE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773233375; c=relaxed/simple;
	bh=PtnEg8eyPIDvx9wiapZ8rycgx7JxTg5ghLpipT5JkDc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j7Uk5hM+LefUo7nnGEI0MiiAJFhZ//9P8eVXmSRyPT0hyrqKxu7DPRm0dSa3zJGqEf9Y0UQKEnFXd4M/XMT5ODrk9oFwvVmDd8Gkdw2yvU+PLbkLBtrUKPTzpxgvCfOv6od8QPxPQfcIG/GWKmoK7sQLDBDF3czTdLUH9vhs3j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nlhq3Zis; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mnirp7Pz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BBeBfP2676286
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:49:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e4l8Qg2Bxfvv66wI/PrmEdt6OfCXTa4ZaWgbsVNWAkE=; b=nlhq3Zis3wVae1LL
	eEiNeAd8w9MaoPUv6Dyab9BJuRzYrO+MWwWc8VV7mCpZzNCgEZFctbi6m0OHB6wt
	E2acik7HtxBx499XhMDQ6HyWNUhKHg+pxTAte9lVvzuiKFqs2qNHF1npy6IigMUL
	GHW/uW9HO2eFjHO19xBu+2LQ7skqYUNdRwyDoMB28zzbHGL3g2+2zTGeci7c4ZuU
	eqYctASerjM+jXZxWOVkDF8RTebp1EGE/ECXfoYr+chg91OhlUur/kwVkrFQ+F4P
	rnev8RpAOM6QJW5iYbtyBpxsYKtYzZLOPs1xVBcyDy7oOgl52Y4zvqkICvSJCOSG
	gkn38A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu3cd1c1u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:49:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd80bea54dso2065065885a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773233371; x=1773838171; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e4l8Qg2Bxfvv66wI/PrmEdt6OfCXTa4ZaWgbsVNWAkE=;
        b=Mnirp7Pzp066gL6FCfF4bMCdiKt5hqIe2taT26nEBtiXdPgvLTf3N6yUxE7OWVACcK
         7f3rgJlYpJIG0rHNPHjgBULOUOx4Y4DpmGlcC3tgjWowlRKHoAP3w52xNw9afznUke4y
         4+GoOKTQpI63c+2vJ/U3Ov2fSWlr1NB7PhVuwoFujs6tGp5u0wAQIRft0cnCf2XeAJDe
         3rKwL5uXWD/EEEs+lOdZEANpYuRqd9FgwauOcy+dubT6RTv62DgTB6+EQFKyd4e7xs5n
         Xlx9vpByxH520dxQxt5Vpy3Izs/NS+nMcKUR7dCad9HNXLDYpI3pxTWFxzMv6t2q+tlV
         ZOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773233371; x=1773838171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e4l8Qg2Bxfvv66wI/PrmEdt6OfCXTa4ZaWgbsVNWAkE=;
        b=E7XKPuyW9qiX5V2iWZ0eYiG6N0xxc0sdka0+KOhiaEBTi1gHydtXD8egEeXTCSEmlg
         +gTVr0IiXrKqFdJBxSNC09gkez679k0JPJ5ViB8Y/v2d768/xW48Xty+tl7H8IH6Z4Gc
         /ILj2WNr6Tc+dv1kut+RpCpnzt3I7AbTEXURURxaApAiLZ69q7rqSbxgHKunanWETFsX
         rPI46/yWjuFGBHMm6phUIdKQakl1vB0npF00d2X0ShkhwwXM5nZT6DBn/loBDROd55mP
         D4alp9udpXtifDcdfyQ28OmLZy/s6R5ywZFBglOvuZTzCm+K0kesr7zrtw8lNoLiA3jR
         Rr7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVcIFt8O1R56HBcuJffhwOgKeCflNPV52DtjHjCPbhkiddCQVaQVGQJcbeu0lc0vgAcK1bU0WPW87/j@vger.kernel.org
X-Gm-Message-State: AOJu0YyMBjkakG6LTXYr7fiXhcJbaeP2NvGBInPe4ZMS3F4XqZ40Rt65
	0mKREH5WDWjoTh1MUZ/hPAhz5tJam3YRZeZZh2+YP1xQbdjBPTK+cyLV4lqYxZV+tjGfK8eiOA3
	8g2SofINWgsQFPXdjqyBYxixXEWmotdZCUPj8CTNGoMKV6w4LJctySun25S8qELJN
X-Gm-Gg: ATEYQzydWZeluVhhKoB+ahaSEmDZp2J78svYtCtpWFa3Z++Y76KzGwSovPmws0xUQcg
	c2fBkd7UQ2OGdArr/uPwD5fMeLtoobrYaRnpmcNwJp3sg6/C8l+SCVpVAttltTo18+nCvere2SN
	P7yHZPPMb8mDjxUrp/3OZ+OJhvlOqKD/K5VZFY3NdyIJFYrLRsn6llTilpBz/dyupdjx7InCuFF
	eeGsGRNTTiRY7UJ4L2bXNTC+m3fea5wE8xjRqeVxVZktCzBBvqVP+kQDDIK8OKqI3n3vxUO4Sxn
	AF+X4u0xErKyF2VDgiiTr33Ll4aSlte1LXMDlC3pQhOp0QuBuBrpohqoDlZTIvyo4cjBsGP/lXr
	jaXNslO+W4fE+j4TF6gGyZD0WvjnCxzrzplcDE2aofBrQGpph
X-Received: by 2002:a05:620a:404f:b0:8c7:f61:fd7b with SMTP id af79cd13be357-8cda1abfd4dmr263192785a.57.1773233371421;
        Wed, 11 Mar 2026 05:49:31 -0700 (PDT)
X-Received: by 2002:a05:620a:404f:b0:8c7:f61:fd7b with SMTP id af79cd13be357-8cda1abfd4dmr263189285a.57.1773233370970;
        Wed, 11 Mar 2026 05:49:30 -0700 (PDT)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b972de4795asm54054466b.18.2026.03.11.05.49.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 05:49:29 -0700 (PDT)
Message-ID: <07f8f42b-3b38-4288-9a81-83aec3f3cddd@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 12:49:28 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] arm64: dts: qcom: Add Monaco Monza SoM
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309152420.1404349-3-srinivas.kandagatla@oss.qualcomm.com>
 <63de1d04-adf0-4608-aeee-2d5208c100ae@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <63de1d04-adf0-4608-aeee-2d5208c100ae@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEwOCBTYWx0ZWRfX0EwwUJvJ6jpP
 pfyIh1L9umVqKAGGkFH7gGHw496w8vjcICuthd/tCDr0KAapMphQieSNbzYF1r+13zokg1qNtMb
 ZnP0MzCQzgEjeD/81j774Ekcf/6MRdCASoLGA+B6yAjuiVddDdMRADRCJP89znooAKy8Pzswri6
 IjSN6AIWay0Zz4s7aSLTjg0wDfZJzPSqNu80yjpSJSCGejEj14WXVabfDox8qwP+InzxXpnXvep
 pYa5V/GKauk2C+A9G87G1EGwWGjlyJheymlMJjXj1LFoI9oewkMNZZQ1092lEw/QMomS32gUJoo
 adnCI5ryzFn52x5tlqMzzd97aoscw2MJhGU4iwzjEaLvc1FGHVBw3NeuT4OzS+fHOgGxP9U5mxt
 sWOoVzehDaArh3ghwdqbfsNYxL9PYFgu5C/02dLUlwb9Eb7RCrpSCJOeaWJK+bb6hOUuG9JlpPA
 AVE76kctAnb7AQiTruA==
X-Authority-Analysis: v=2.4 cv=O/U0fR9W c=1 sm=1 tr=0 ts=69b164dc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=KQ5Aj9_w7GlCoQvhwioA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: tthNO62BH_mNkF407d22pCrX8KB-5KmZ
X-Proofpoint-ORIG-GUID: tthNO62BH_mNkF407d22pCrX8KB-5KmZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110108
X-Rspamd-Queue-Id: 9587A263E17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	TAGGED_FROM(0.00)[bounces-274070-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Thanks Konrad,
On 3/10/26 10:39 AM, Konrad Dybcio wrote:
> On 3/9/26 4:24 PM, Srinivas Kandagatla wrote:
>> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>
>> The Monaco Monza SoM is a compact computing module that integrates a
>> Monaco/QCS8300 System on Chip (SoC), along with essential components
>> optimized for IoT applications. It is designed to be mounted on
>> carrier boards, enabling the development of complete embedded systems.
>>
>> The following components are described:
>> - Fixed S2S 1.8V rail
>> - PMM8654AU RPMh regulators (PMIC A and PMIC C)
>> - Display subsystem/phy supplies (DSI, DP)
>> - Enable GPU, GPI DMA, IRIS
>> - PCIe Gen4 for both controllers and PHY supply hookups
>> - QUPv3 firmware declarations
>> - REFGEN always-on workaround for USB2 HS PHY
>> - Remoteproc firmware names for ADSP, CDSP and GPDSP
>> - Ethernet SERDES supplies
>> - USB HS/SS PHY regulators
>> - On-SoM eMMC
>>
>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +/* PCIe0 Gen4 x2 */
>> +&pcie0 {
>> +	iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
>> +		    <0x100 &pcie_smmu 0x0001 0x1>,
>> +		    <0x200 &pcie_smmu 0x0007 0x1>,
>> +		    <0x208 &pcie_smmu 0x0002 0x1>,
>> +		    <0x210 &pcie_smmu 0x0003 0x1>,
>> +		    <0x218 &pcie_smmu 0x0004 0x1>,
>> +		    <0x300 &pcie_smmu 0x0005 0x1>,
>> +		    <0x400 &pcie_smmu 0x0006 0x1>;
>> +	num-lanes = <2>;
> 
> This is already set in monaco.dtsi

All the comments look fine with me, will fix that in next version.

--srini


