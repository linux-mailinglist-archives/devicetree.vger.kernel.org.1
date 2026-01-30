Return-Path: <devicetree+bounces-261137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RqN2MON/fGlVNgIAu9opvQ
	(envelope-from <devicetree+bounces-261137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:54:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24422B9153
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3BFD300A131
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D22F32E733;
	Fri, 30 Jan 2026 09:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FLZ51zPu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xdhy3R17"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003953451CE
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769766880; cv=none; b=em1ZqD8hf1PSC4TXRCfIwH+1+5M9bbIHdcZVWb+zwU9de6pMaeCa8VWzm04pnJ0nCFLvnMmHj/37zSQ59v+3ftjoOk6p9U1jlUB7egYRCO4Alwm4t1/XQkEvrpOK8b/6bCnVBXn6u3cOvbgUKIFURHryC7tMcoZXEBMTNzDWdLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769766880; c=relaxed/simple;
	bh=ZJA9kN03DvD07TYAjfnZgouJ+W+OT0ZEDNFcgiOBCLQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X3JjbHm/KhRFuRt83+EemlOMZ+fj1tGJy6h+TqFWVBDOkc3MBOcKcbkQ0ZTRR8Y2yL92RGAd2IIYmeNnbh8XwvPauuzfWV8o4O6HZV77D+KP5+prG2/A3pxCXw23RepGalJ0Yp1SGf6yRt1xtB2HgEAthayXFgXmOnqPTGhb9KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FLZ51zPu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xdhy3R17; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U4bnjp1826296
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:54:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H9+DAV+c/CZgBH4DD2jfZcDSjLwf6jHYApWbhBRrbJ0=; b=FLZ51zPuR2jby4lo
	tSc/czS0eCZMucXmZkjXl5qnsv6WmbE16cUZ52mpGa/Sxugkrc5PaaX/2RXQrHuw
	u8Tc6iX13mX8/HzCRPT04lmZmIcZLU/Pz/buKEQ2ob/CDqO2fHsNZ3rxdtS2nxSG
	9+VGQwtAEljGwZoJB0furVt/tZvLzrb6n9cmUHdS5v8FonBYU/m/tQDCUQCBQJ/N
	9CP7wgwSu3VYumGEkIw73KXSFn5ymPLypP9fire8+a/inRKIeziUf0ZOxi55g8iC
	6b8cIcTijbYjrw1x8NTlh5s8Cp9vVYad71hF5yrLfzUrn9pKtd/i+pOVJogW3z70
	KM+ZzA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsmrw9t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:54:38 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88887682068so1816776d6.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 01:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769766877; x=1770371677; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H9+DAV+c/CZgBH4DD2jfZcDSjLwf6jHYApWbhBRrbJ0=;
        b=Xdhy3R17Ehz8DG5qBx9X7lb05PUudEsMylAcDq93FYhZYZXLidiDGgjRHA7LfohcUm
         f6AIv95mOjJrlYBxMAH7c8Aw5pM1qv9TnzlsfBM4PxDmpb5MpriKy83uErx3ESqwqzpC
         1yrs7Q1Ik/QA/jRoaRoj1XCg5VhepJ9RLnqvqDQAj37qPgtgrYp2w4xiPRxQPfYIAWnP
         uUmSrCyxoQ5OlG0MLLXUDX48PkOmEy+DIJP1Nl40cPMZfTzu4LQoUYq+TS1J/dGvzFnV
         1zefmoXgilfMcQnm5vTKSOertl8RESUij448G5rGLWnhzLMbFBHssLFV+3dDLTNY6eaC
         dz/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769766877; x=1770371677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H9+DAV+c/CZgBH4DD2jfZcDSjLwf6jHYApWbhBRrbJ0=;
        b=ZJPsk7Rd0wu2JXTvuMYTo2j4An8Y9JEIX3QEeOBgDWFF+qqY8lJa2oO+8hUYZLbnf3
         eVcd9a9qgHRYHP9hHI2/yisnldImu/XkVnwn9lJ6yseIKx5Oa01/um/6ETG6uuCZdFpH
         W0ZRIjsxa66jRDs1h2HvtIBGoKQSm5s4qxalZDuvdyUZ2tlNBIf9Hn1qp/R2WwNcO2ng
         /9iGxhGaOaOtlEqqU+EUZteUSmcU0ov0XEycF8gcWO0qRavkWlztq3ZmpZYxl8jODYwu
         HFx0m1adl9sLZ81aR0cDMVA+T+G1S7vzoDB7Z7pU9E2gJ3iiqeegsSvEmNqtaONuMeA9
         h49g==
X-Forwarded-Encrypted: i=1; AJvYcCXwkPku17WC3bbiTFCnIIFCjhwItKIjUPTr7RZc8Htj8MhjnTbkiHoPESGadxNd7EWotRG0wq9nD4wx@vger.kernel.org
X-Gm-Message-State: AOJu0YyCTMPl77ztAPv3X7hqYaGEks7+yTtx0BTJVfB5YVw1WQ0ObWxz
	DtM+QvIA4+61Pif1MJ6/mnGTCVzJIdXQl0t/qqX4ajLwfdPNyckRtrCL02xY5azyD0gCJOZguEc
	5t8TtkaKEGnFG0nEozOtQPILPMUi/jm8ClBJ/XXCV5Fd1CdgjWpuBUOsC5I6xHhiC
X-Gm-Gg: AZuq6aI7HuOv6CeGUeGD81erjh3CNhUQctIsJY+V8q0MtaZFTLQgGUTkwrizGcFzNRT
	EHbCijTtQL67dvN6p2VzSdi8jXNhW3gTxVdn3/WQEQjK9CE52Wqi+JZpvpY8U3ysTc9v+hr18DO
	qBDFjuXZIdbig05houg75G3ESxgR1a8AdssZaoX8l1Q3pCyXt2NctkT0B47k8ERPoBXDliz3wLg
	Rv8qcXbh2xjUD93Ww3UjKUexf+CMhUKimS7f7GrGu63TtaJTH9DJVXOB6quCypaUOEzH5BP1pOb
	6pgBvDgbdedWuxNcucGg8qC4nrk9/LxFPsANpXC6CEQyin4GQ0Z/B5j8CPthO0VkIKcQVddZyHA
	4EBzFzENtyKMo9WU87vgnWFqGKjcQEPNgKgkfkUk4cl533SxxaqEMxbd9BzLgXZuoCEk=
X-Received: by 2002:a05:620a:4009:b0:8c7:9e6:3a4e with SMTP id af79cd13be357-8c9eb10f0a2mr239893185a.0.1769766877047;
        Fri, 30 Jan 2026 01:54:37 -0800 (PST)
X-Received: by 2002:a05:620a:4009:b0:8c7:9e6:3a4e with SMTP id af79cd13be357-8c9eb10f0a2mr239890885a.0.1769766876599;
        Fri, 30 Jan 2026 01:54:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbef86deesm399356666b.3.2026.01.30.01.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 01:54:35 -0800 (PST)
Message-ID: <5a70d411-e0fc-45a5-829a-c20fa02317cb@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 10:54:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/5] arm64: dts: qcom: glymur: Add ADSP and CDSP for
 Glymur SoC
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, robh@kernel.org,
        srini@kernel.org, amahesh@qti.qualcomm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-5-sibi.sankar@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260129001358.770053-5-sibi.sankar@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA3NiBTYWx0ZWRfX8QMakJ0vOMks
 pEkHX2Yw0QIFQcXHSmvZW+IRvbbHUp1ksEnlntz5jBk4FD5PDwrasfqC8Te1viapW//ciUHPKFv
 bt9UnnNNNdbRtnifNOBwTDn3WfIesWKSDBErCbNiVO/9iZZPVrOYX8LvNMTqEMNZAfIwhngKATV
 9mAi/hA8Wt65Jc+to0mDI3hYWmzwYFXO7SlBzEmG1/44uFchcmw7heRXdZlqAt1F/ZQTCK7IynO
 Lt2iNdh35zFmmSw3lALS/hqrboG5HqDcZ3M7Hp6Iy2iCTPagKJdcSJiSHeiLpKQUB/3lxmxFHmS
 S5GZ+auh/jNPa6vXL4wvHL1slnugpIXZEYbRzMV2nwlALE6TiqWhgJk0WHo4U/jYcmC2QC2AtPl
 ffTJCuUvP1xyo3SaBUFFMiROXIWgcgIAW9l8rIAPbwhay4C2uOPMc9IdByxk/7KKJwpBuJv4c4W
 UvM0yC2tG5LR92oDEWQ==
X-Proofpoint-GUID: 3dPxWjkuMLhUFLajq5aKh5lXCFF-b1YN
X-Proofpoint-ORIG-GUID: 3dPxWjkuMLhUFLajq5aKh5lXCFF-b1YN
X-Authority-Analysis: v=2.4 cv=HMbO14tv c=1 sm=1 tr=0 ts=697c7fde cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WPoQd7O3gY_o9P5QeXMA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261137-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.236.219.224:email,0.0.0.3:email,320c0000:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 24422B9153
X-Rspamd-Action: no action

On 1/29/26 1:13 AM, Sibi Sankar wrote:
> Add remoteproc PAS loader for ADSP and CDSP with its fastrpc nodes.
> 
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> ---

[...]

> +				fastrpc {
> +					compatible = "qcom,glymur-fastrpc", "qcom,kaanapali-fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "adsp";
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@3 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <3>;
> +
> +						iommus = <&apps_smmu 0x1003 0x80>,
> +							 <&apps_smmu 0x1043 0x20>;

0x104x -> 0x106x for all children here, the result is the same but let's
match docs so that no one has questions down the line

[...]


> @@ -4692,6 +4808,176 @@ nsp_noc: interconnect@320c0000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		remoteproc_cdsp: remoteproc@32300000 {
> +			compatible = "qcom,glymur-cdsp-pas", "qcom,sm8550-cdsp-pas";
> +			reg = <0x0 0x32300000 0x0 0x10000>;
> +
> +			iommus = <&apps_smmu 0x2000 0x400>;

0x2400 (same reasoning)

[...]

> +				fastrpc {
> +					compatible = "qcom,glymur-fastrpc", "qcom,kaanapali-fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "cdsp";
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@1 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <1>;
> +
> +						iommus = <&apps_smmu 0x2001 0x440>,

0x200x -> 0x240x (again)

Otherwise lgtm

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


