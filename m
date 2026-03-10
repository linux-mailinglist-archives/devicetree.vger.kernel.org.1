Return-Path: <devicetree+bounces-273451-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +O4OFOH0r2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273451-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:39:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 105512497E1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:39:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE0E73020FD8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E13372691;
	Tue, 10 Mar 2026 10:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GDwyEmHV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HK78/KAm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E34B36F412
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773139151; cv=none; b=rzHqZKHp7et4rNNG2j7GrlaaxM8g4BFNVrTiuQFLhnM6QbzRvUqsw7DrzZfg6t3S+9C6i+5ThIfbqDMaofSHNLVOPNb67FUpHiZjhKFkVCWqO/8LQMOe3PSIoXntzGA1uygBi7g4AoLpQA8swdl3XApImCvDRI3x/adXvQJc9FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773139151; c=relaxed/simple;
	bh=fP8O98OPBK3agQxFodoAANoQ6TaOINOYU8yt74cg8ks=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e7CRgNgnp0gHw+CW+JVlbELetDopUnSpubedS8aKdtOTw+pW8Xj+FD6X/Xu4IK+vEmVuW3nmAMp9yY7JpJQHulNAhmxlpM7mbDKH3DJEE3XJWi/TNYEL8QzbVQJOi9AFw714D7VgYBDhnMH0quMrcnklXuQrsYLTlqMh0z3le9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GDwyEmHV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HK78/KAm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AARFVc4188602
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:39:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yMz4jhDlfWwNY9iQLLZN7mOTPZWJN8ov+NL7HZ8hb6Y=; b=GDwyEmHV97sJBrPe
	BK8gPC2DDtSlLgq/QoSFFKMw1EVcCuBVse+71R6XtdhnKKaJAKEpBLyGvTXIWt7S
	yfGqMVWYvM0TKk2HVYUPrNd1zTkAnsZL4LHrasDeII429da4cC44EoMjnY57QfPI
	/Na8QKfK2NAB6gEMIDI+bmQph7NIPjLB7LdgtCmRnOJFiJV+xx8sbWkeP+5zhc7R
	mSW9JdawCYpMZxMMM6z8Ae7VwFIJJh2l8W0a5c5vlie5Qb7bfomhSZ9bGYQ9CnF2
	/vu5qBsWqkITg3jNxV9Ivam+qGUGKQ08W66djPRYY4YUWGl/hv8e/aTDWYY+8pMg
	iw07EA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cthjf01er-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:39:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd8dc8b434so121351785a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773139148; x=1773743948; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yMz4jhDlfWwNY9iQLLZN7mOTPZWJN8ov+NL7HZ8hb6Y=;
        b=HK78/KAm70KdL+1edfDX8AN3kUonnnQfWuTKSnRqkkzriEqXKUIVM82T43b/6ulfT4
         mV09F+viTJDvXt+Fh570D5v14UGWWw/vzg1bBS8zS9y0Tr6JjjRFntoUID8UWeo1Stcd
         JpIO+zSyPzfb48U4tQmu/EMlyJXJ0BD9L4dQHU0M1vfmIGk0WleGUDYjuhrjp3MrpaWx
         SrJdV2pLRztdfI4y6r69GaG2WaYtRcs+Xa0DI9URhKIzQUqiKBJVs/dIg/2+wQDdBHaZ
         nayMLC/qB4DzuzT0YxFb/WcnrVGTqrO9Zl2Z7JKjpXyXURZHJI/Cn7ix3wGib4p9HaKA
         95Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773139148; x=1773743948;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yMz4jhDlfWwNY9iQLLZN7mOTPZWJN8ov+NL7HZ8hb6Y=;
        b=af9fwvCkWwpLLomvCufR9aSRs59v7SQuvzoC0GPC9Be8EokuhvcH50UNBwB4rJVgPv
         kyHv9JV+sWfvN2i9U7jhCCxHNzmM2aelvrchPYzWXSzThJBicShkbkl6YzMkmahJ+WCt
         IK43BIymbrBgZ3Ekfynl5J3gzEugCIsfa1IOUh85mV+QsSlifD3gp4MbGQHdakqLL6Ui
         slpraFYjRhwTetBRztFarYZLdmizflW02f9iFn4eiSKLoIx9B9NLaXMGAz7K2PxWP7UC
         fXYpR95OxfehRLZyoWlbLcvc5QQ6199TGTpcZQzVGn+6IpzQ92vyQuyOhQ6xk6TPsix9
         3X+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUk9HCoKBGT7J7CJTBZij2htMCbThdljDFPirRNBvzp2xgRJ4WO73I1IndYmzikffX13zFxCC4siqOi@vger.kernel.org
X-Gm-Message-State: AOJu0YxyjTmnUo1f/FyNrYRz8LCLrQwl9HIwwcM24nWXu424+eCPnj6f
	lCl5VMRGtOqc/ziHElYPQm6Uru34ttSyFebUPbuOaibaoptFrJTM+u6fu7hQml+Vs014lSryEt7
	AKLGSH8j7vakQZOkeT7PrlcbG+cySXpTV9eHgLqmQoGa3E1fV+sisAJzDptL+jyf7
X-Gm-Gg: ATEYQzxcG3HQFxd8PKU18tGwc1dk/IE1a1tA/kn5XBpvuOuY0+l/GMhKp7MoNcVnPsL
	hpZtxd2kSL+MB6yF8Ut/MaGDGExMon/VR+t6k3FUNWBWssc4YHgFYe53DrMnXh1yvugX08N7W9Q
	ggX6M5gcxQ0ZYd6iMsvBpyqzwnNsd6kh2Y0kjHJUfsIgbmqQ6/t0ps31Fzs96VZ4gryjw65vrSb
	84qR80ng6LZQPVFMgao48cWPZ7toUS59rYQcSCU4eXOVr9yWKh1HBAvnmAOPoVFCeLnu/eNeK8k
	Ym96Pr3ME0awPP0cm1RvZSTN2ymlDiIW+yxeuvjfEORTd9r1hrRlCQGtm6Xu6X36UgMn1MHQ4qe
	K7gxXUBTFuWhwNEQVDpDgUtFaTeSrisb/nSNaggoX4dhliLXKh5PTjcbs0YDKoc8FXzAm209ahV
	CRD0Y=
X-Received: by 2002:a05:620a:8b17:b0:8cd:7fac:a2a6 with SMTP id af79cd13be357-8cd7faca57fmr608063485a.0.1773139147845;
        Tue, 10 Mar 2026 03:39:07 -0700 (PDT)
X-Received: by 2002:a05:620a:8b17:b0:8cd:7fac:a2a6 with SMTP id af79cd13be357-8cd7faca57fmr608061285a.0.1773139147419;
        Tue, 10 Mar 2026 03:39:07 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef4827esm460632666b.2.2026.03.10.03.39.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:39:06 -0700 (PDT)
Message-ID: <63de1d04-adf0-4608-aeee-2d5208c100ae@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:39:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] arm64: dts: qcom: Add Monaco Monza SoM
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309152420.1404349-3-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hr_nOEaFULPa2AUUnWb0I0iLaiDzyF9N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5MCBTYWx0ZWRfX2SEC1WKm6l10
 IOau/yMByQwkCY4IagkFFu/sFU0BZyPFZXBeS+QPXCfeoZU0dBDNKx8WvKs0Ib5IXsT/lKEle8h
 4kfVa7nqpLn+Jy/6g9JfRniJDEHB4GGk5ohyffXcpHop7iJobLaJD4LWuRxnMeGgJ2AlDMoiLqc
 Em4BANpzGvRkr0cztKyzcEYvR7XUT8s14FIEuuh9LOPiJVCxBiO6acVQ99M426DZ7qBkFo1NSK7
 b+UVL6BRHIsjK7eeZdqchmyRdgAthw4pMx+Zd2tc6YTaGgH9s8dBWoaQG+rdUg3jTR0ZBDTjHeQ
 JiOxmd1hz9cq0SFDaCrOmMiVMVPQzHlvwf4/vXCp0MEyqQOmHphOYySPJyk/x4aS87hjjVYvPJa
 8UJ1Bk4zVqukggQ8HoAeNWlSbQ8gDiXfFZiHsI13HFq56g6spm3L+iSj5tbdrKrhq0gd7E5Yllb
 9NLMaayUgpLgbeJYKcA==
X-Authority-Analysis: v=2.4 cv=A71h/qWG c=1 sm=1 tr=0 ts=69aff4cc cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=eQA81Jyt6kpvTzy5W_wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: hr_nOEaFULPa2AUUnWb0I0iLaiDzyF9N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100090
X-Rspamd-Queue-Id: 105512497E1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	TAGGED_FROM(0.00)[bounces-273451-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 4:24 PM, Srinivas Kandagatla wrote:
> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
> 
> The Monaco Monza SoM is a compact computing module that integrates a
> Monaco/QCS8300 System on Chip (SoC), along with essential components
> optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> The following components are described:
> - Fixed S2S 1.8V rail
> - PMM8654AU RPMh regulators (PMIC A and PMIC C)
> - Display subsystem/phy supplies (DSI, DP)
> - Enable GPU, GPI DMA, IRIS
> - PCIe Gen4 for both controllers and PHY supply hookups
> - QUPv3 firmware declarations
> - REFGEN always-on workaround for USB2 HS PHY
> - Remoteproc firmware names for ADSP, CDSP and GPDSP
> - Ethernet SERDES supplies
> - USB HS/SS PHY regulators
> - On-SoM eMMC
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---

[...]

> +/* PCIe0 Gen4 x2 */
> +&pcie0 {
> +	iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
> +		    <0x100 &pcie_smmu 0x0001 0x1>,
> +		    <0x200 &pcie_smmu 0x0007 0x1>,
> +		    <0x208 &pcie_smmu 0x0002 0x1>,
> +		    <0x210 &pcie_smmu 0x0003 0x1>,
> +		    <0x218 &pcie_smmu 0x0004 0x1>,
> +		    <0x300 &pcie_smmu 0x0005 0x1>,
> +		    <0x400 &pcie_smmu 0x0006 0x1>;
> +	num-lanes = <2>;

This is already set in monaco.dtsi

[...]

> +/* PCIe1 Gen4 x4 */
> +&pcie1 {
> +	num-lanes = <4>;

likewise

[...]

> +&qupv3_id_0 {
> +	firmware-name = "qcom/qcs8300/qupv3fw.elf";
> +	status = "okay";

Other nodes in this file have a \n before 'status', it'd be neat to have
one everywhere

> +};
> +
> +&qupv3_id_1 {
> +	firmware-name = "qcom/qcs8300/qupv3fw.elf";
> +	status = "okay";
> +};
> +
> +/* There is a HW/FW issue preventing proper REFGEN hardware voting
> + * for the USB2 HS PHY. As a workaround, we force REFGEN to stay
> + * always‑on in software, matching initial bootloader config.
> + */
> +&refgen{

Please add a space before '{'

[...]

> +/* OnSom eMMC */
> +&sdhc_1 {

This one is out-of-place, alphabetically - please move it up

Konrad

