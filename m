Return-Path: <devicetree+bounces-260396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WG5mBVMFemlE1gEAu9opvQ
	(envelope-from <devicetree+bounces-260396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:47:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 820A8A18DC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48B90305C8D0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A253B350A22;
	Wed, 28 Jan 2026 12:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nS039ZSL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HmE8k6Vg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AC732BF43
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769604329; cv=none; b=bKe+a9Y29O1p6nIngMq499/lrxeGVPYroNdUx6BDVfQxbYoPNz01yiyHbrdAm2u3FjYi6GUvOJuVmnu+JGtZQBe0hJCbo899PCPbyjHeTfcCoYifeswxB1XI3Lo6eEz1gnVTyrmYLI+20CROF5/xRjoB5UQ1rZF6I+OANgINNuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769604329; c=relaxed/simple;
	bh=b4kTpQ/A3aESMrQWAbATF+VPruWoY5Fdj5fL/kKLyxQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UocP/gZaJNGHZ0haktSO6EVa4qgP6bG0IajkkODBE9I3Zvbh3yEJXyPYACbf0hHHETSYYWxx9sdNZGQ9356m2YwkW2HtjW7jveK+mKhubX6ZF2J2D/5+yubh9rD4kxlXhI4+vS+/mCuutMpP+c//VqI+AwLEwlXVWNECoTnqHU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nS039ZSL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HmE8k6Vg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S91sSY3442505
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:45:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4HgfQBJtla6DxDDjNkKRr/ZNdjNpTK5wNkfCepDFvfQ=; b=nS039ZSL+C48tvhS
	Y9Zi46vJr6G4dsKK6O3b60lDNeiv/DfrJetaHAtqFi/e/wYIrRZO3hUXN0LReV1M
	Cn27skC2QInfzsACRPYnmnefVHdr3cTn3WQ7e2678d+G6Thu4J1XKYA3pSV4WNHn
	nGZ5s0UH5932dvvtd5qxOUOCK7mUeE1/oxMja70adzyX7DY3qqhoohq705CUMoi5
	2SFULTx984zhP1SbYoZo6FAMQGVuZ3BWqJpjYIhOGy4ExWio1k502yxCBQhDpoTj
	WWOLbtKefG6IPe3hePTnSM9n9zzhZNgJYa4Ooncn+IiPUDe4XLUOV2Tr18zSXJL/
	9YhKGw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byanahprg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:45:26 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c5291b89733so4055724a12.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769604326; x=1770209126; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4HgfQBJtla6DxDDjNkKRr/ZNdjNpTK5wNkfCepDFvfQ=;
        b=HmE8k6VgL9Gx0DCrOCGMz5bn6n7fhA8TQOQBU3oglBe1dts6z2B3kod0hX9aiHLcRA
         TgIN8Xjc/6T0SZ6eNfrB+quHs7NETiQBLsOHzdWoz8lZPFUB4n0fjsspJNtSdibmFP4G
         1/4xjz8uwdbzlhGrBT1m08sAxftInAu8xzYNoPy/0D0n4sb5W4Y1xlJ7IuunsG2Jy+Zn
         QECniwwlLY32jCaVeEl7kz0Q6ez85IVtaMQ9b2H7PzpBQqrDex3u9TQjElBbxLYhjT7u
         hMPR3l9X3X7w4HZEObXzRpfME3S03v0LdMOhx5vfYROUWf0hKxaavO+1LGIA5HfSI2c6
         kOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769604326; x=1770209126;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4HgfQBJtla6DxDDjNkKRr/ZNdjNpTK5wNkfCepDFvfQ=;
        b=J1QFAa1/eV9WRKWChrr95VIr+epexqI4IsozREE7MhRuER3pCQb1/FXne/zF6rWthw
         op/WcsoyODrWeekfpS5Qy2kAYBGueD0rQtxptlJhL2hq/1hWIvYU97XxsVHV6Ri5N5P4
         nfA0YKo4qcMe6cmeqDpovbx1EwszkvSwxzIcBO9klhuTqY3wn38+8Ee2t1G/9FbVoDrB
         XFB/c1wOzrgoNvgNVReLOATRMQspAx1V/0fSIG7hc2MM5K4V7csEAk87LrDzV008O0oZ
         m6ghvLNKWTZ04katT0ODCoabW5DQH/LaX4rndb8OoScwcAZ5wJaTWe+3IP8Zy5TXq8Fi
         tVBw==
X-Forwarded-Encrypted: i=1; AJvYcCWDfpdqEjfehIkjhSIVLoYDkyIoEQbWbgJYuR8meqqxQt3NVrhu+WP2ToTUk+g/WO8LHjTpbnaR7dZV@vger.kernel.org
X-Gm-Message-State: AOJu0YxJZ6/RV/MEDlBZiWIQUj/E3rPKhYHrHMtZBFFc32tgeGjqoLY8
	uok9WkfbuHgSMqB3lCFPe/IUdP/2s2Ff56I2wM/F7GurCiLgv5UXk9e5WcQUiMngv8Eagulxpvm
	usAYrlZCzOcthaz6X0Q2/NBbUGh3fbVETkap1CwcjjkKtIWnIOSzKoe7xFPbmpUyi
X-Gm-Gg: AZuq6aJRPzWu/fF01rDfX2VxDlN/+TinDwfOM5wkU+7zuDAsI/1dVtV9Bs5dgv2sFho
	TrAaVU95Y1fzX1JQ7pW1UXLUg1KMSGUq18hhXbvvx2t55y2vY/y/BSmwyf6jSRkJZLPvKwoWcZQ
	XvlxV/Kpac7o0j0EEM7TlDN4xJdSKuRsh5tQZXYsFpyoKEqmLnrqElnsA/a6nAbJp44yZy5SDCc
	2Nx+gkCp1HCPfudKav0/4h+AhiDJzPlXRLT0uiqD5D+O4AJ8jPoeI5LZX0VFryS2pYAIM5KMkb+
	Xn8WKGrJ4shIw+PCUbix0oDYLoFw4RSzTiMOsIEPXPH7Q4lIGHxQli5qO2fbpRc0V74rmjCir5h
	JB+BcNP3aUabY5tGSCL+LI6nKu8u8qSNS5VCNF/IQ7vU=
X-Received: by 2002:a05:6a21:6813:b0:38e:9ebe:525e with SMTP id adf61e73a8af0-38ec6410421mr4843098637.52.1769604325784;
        Wed, 28 Jan 2026 04:45:25 -0800 (PST)
X-Received: by 2002:a05:6a21:6813:b0:38e:9ebe:525e with SMTP id adf61e73a8af0-38ec6410421mr4843067637.52.1769604325276;
        Wed, 28 Jan 2026 04:45:25 -0800 (PST)
Received: from [192.168.0.171] ([49.205.248.59])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642aaf1308sm2303649a12.30.2026.01.28.04.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 04:45:24 -0800 (PST)
Message-ID: <b6adf4df-2fb1-4e18-8c3f-3aabb4e155ea@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 18:15:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] media: dt-bindings: qcom,sc7280-venus: drop
 non-PAS support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
 <20260127-venus-iris-flip-switch-v3-2-7f37689f4b39@oss.qualcomm.com>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <20260127-venus-iris-flip-switch-v3-2-7f37689f4b39@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: CDmBrjJsSXx7pqZUnwQtIuNluOVfj7y5
X-Proofpoint-ORIG-GUID: CDmBrjJsSXx7pqZUnwQtIuNluOVfj7y5
X-Authority-Analysis: v=2.4 cv=N58k1m9B c=1 sm=1 tr=0 ts=697a04e6 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=4hJEjaH6g9CgPEswoao2AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WR1XFhAWD9P4OCyjvdkA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwNSBTYWx0ZWRfXxNPoCS3lCOFu
 uYUHiNX7/bAfAciyGkX9H6wd1yMf+WyLGOT1uK8CS+lNDGpGOpItf7rP/QUlZbDxttW0pnRL+Lx
 ZIWilxHiM6XvWxMB1Lcwg4Ggwr7Rg5QbBKmyYvK/qdPmPEDXnBzBwN1a6U11MhFt4cE9vzCHMIN
 N4FBKL3F3UVQEzPD5e824mnLtQCZZjykG5kEsE2n1d/lUJqrTeHGL7KeePebJZMMHH49BmhIjeb
 UU/Avvxjji+Lv7qPntuwKGF1HJkNmWFJQIyfPaSn0WeRziYPTJLRwCxc+dvwyxfU/FCMP8ja0g6
 06w4kJBJUeqvYSxafAf+IOaFL9/gA3PQqNGve07ncp6WV9+505F21lbu2Cod5evoPbJZd2xlueO
 ZkmoZ9Av7bcMySuOS3EnQULaOM2lmnXerc7GMeh9ewXkYDpnny6FI732NRdOfv6oN1Mv4QJt/vf
 I2PGF4IGm8KdCVGdoQw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-260396-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 820A8A18DC
X-Rspamd-Action: no action



On 1/27/2026 5:53 PM, Dmitry Baryshkov wrote:
> The only users of the non-PAS setup on SC7280 platform are the ChromeOS
> devices, which were cancelled before reaching end users. Iris, the
> alternative driver for the same hardware, does not support non-PAS
> setup. It is expected that in future both Venus and Iris devices will
> use different ABI for non-PAS (EL2) setup.
> 
> In order to declare only the future-proof hardware description drop
> support for non-PAS setup from the SC7280 Venus schema (breaking almost
> non-existing SC7280 ChromeOS devices).
> 
> The dropped iommus entry reflects the extra stream, which should not be
> treated in the same way as the main one (which doesn't match the usage
> described by the iommus definition).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml | 10 ++--------
>   1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> index 413c5b4ee650..9725fcb761dc 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
> @@ -43,8 +43,7 @@ properties:
>         - const: vcodec_bus
>   
>     iommus:
> -    minItems: 1
> -    maxItems: 2
> +    maxItems: 1
>   
>     interconnects:
>       maxItems: 2
> @@ -120,12 +119,7 @@ examples:
>                           <&mmss_noc MASTER_VIDEO_P0 0 &mc_virt SLAVE_EBI1 0>;
>           interconnect-names = "cpu-cfg", "video-mem";
>   
> -        iommus = <&apps_smmu 0x2180 0x20>,
> -                 <&apps_smmu 0x2184 0x20>;

SID 0x2184 was for one of the secure internal buffer specific to encode 
usecase. To make it work on qcm6490, there have been changes done in VPU 
firmware to avoid configuring that buffer as secure, and VPU generates 
0x2180 only while accessing that specific internal buffer now.

> +        iommus = <&apps_smmu 0x2180 0x20>;
>   
>           memory-region = <&video_mem>;
> -
> -        video-firmware {
> -            iommus = <&apps_smmu 0x21a2 0x0>;
> -        };
>       };
> 

Regards,
Vikash

