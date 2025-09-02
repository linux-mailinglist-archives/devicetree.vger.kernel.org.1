Return-Path: <devicetree+bounces-211676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDCBB40041
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:23:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49EB018845E8
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D0F2877CA;
	Tue,  2 Sep 2025 12:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BgGg95ff"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E062874E3
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 12:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756815823; cv=none; b=OI6X8EvIKz5rZDOdbBV4uE8kzmYkCe3qgTn87dVYwfXVMyzWN5HE6xiMUm0oCRVyqisi1OjDr8hJKR68v/6/bT1Pe7bekp4XB2J+QcgjJ08/g0At7ZVHOAMvGLqZ+WsTv9lRK9p4P+3TbBFezKfiEMJkWDnvITcnVtQyMoXjLCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756815823; c=relaxed/simple;
	bh=P02+43pRcDakn7b+304Ts09JnyB+2wHjNr0r/pTsakM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k8FVG4Cby4IZogJxSjqqMpitpjbu9q+/WuR9yNXjgHdfZno+mT9KLV18e66RSD8SK1WPS9QJ/XLrBukoLG3bR1BvtSSqOBY4MsuWS3Lm9mM2pAYjKym2tSugtHs424Zl73EitBkPgbzzO5vqDKXwpEJzUAbdbIvWtpr/f5DRIcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BgGg95ff; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582BIUEl030092
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 12:23:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7JtlALKG5AscasgyTZVcsHH4DRLOnO8COH68sin79zs=; b=BgGg95ffrg4KDJ+H
	NjUK5potbiq7zi3Wq1T1zEs8kWvMMu4xJ0MIY+lzDk9/1k7cOsXI59C8t3uCFwws
	0Fk1IN9G0usDACKszZ6V3saldHc+/9CUUaiTUbJuYlrv97veIsCiZ9xvPYFD1Tsg
	ONZ+ewNceAEAc+bBUJhlMpfnFoJI5w9D3RvJFVydR2vlnjJincRs9iVUd2+fn82I
	kyBslZBzQIFcoBRp7OxcWca/L6aF5YjW8lcUu0X0KG7v2gHlFpknWLEiv1xlrKbB
	vkHOy7lIEVk+lhY/0ns+zi0hfDv1j0Rd4xjxHqEseLyuU4dfS1oGdYPiRoxfzZly
	nzsmpw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush2ymeh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 12:23:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7f7742e718eso468539285a.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 05:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756815819; x=1757420619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7JtlALKG5AscasgyTZVcsHH4DRLOnO8COH68sin79zs=;
        b=imWLVMXeThCnoyO1xRCoOO/KZQyITg/F/BDquzQniNiUfO+dquG42KfZy3Dp+alTQ2
         5Jx4wTj2JU63jNcK1XTc+IwAKG1qkjGcO8FUjzBWO/fvDQevQCpeP74ojnTFjeZ2dCht
         r6/c5b6MitwPBY5NatvtzyeP/2oGK4a2ocF3aqcLejx1SRuUImLPL4f2dpUUD3XJpsnw
         1IJjQlomJ62TawSegjJZEf9CrVFT/XuZXBVjcgfQNs+SSFy89aXqlLjO3u1Xe+7DXHx4
         Sbq0gr8PoqrCWVG1XIps5Pz1OR7iRxLyzPq7dkTK8zBx2AEyfwvwB2zDcxNP3sAyk9Nm
         5kVA==
X-Forwarded-Encrypted: i=1; AJvYcCVph/YlU7ayawViULiOfwyuegq2znvAEe20D66leq/XEPYphOUILeltABgAIPAeRc4f9d6HMeogVMyo@vger.kernel.org
X-Gm-Message-State: AOJu0YxKgHLadl7/J0WXZ4h9xlYM3Yc/72ws3A3p18jPssrj9PITMC+F
	sHYxbNETKBj9dHXjKL3RaZ2YmhOeNXtNoKqGgxzkVOUlysZcCKSjBm/vdE+cHM6yOUhQWse+RDg
	4pj8simqk1BdPKURvfAeMllMj8Y3RtlXc3CxNy37BMEzs1gr3YqseeessvJn1bnLR
X-Gm-Gg: ASbGncsoFlsn3uPPQ29WPPT0riZ5DSU/A4+iUqtugQfoly3tGrb40vujUZu2lcVucgu
	kIMD6ZNiK2m681SmczOYc3OpmsqgKqz8UymaWhkSm5CgbNB1w4ZsivxyMwEL2jT+0rg4FakUn0x
	cvK266xIrR6BQtf/g1KTbm8ey4H5dA3zIbsgyUL6kfYFuiFFiFhTIBKsXV/tKTc2EL4ilHdJUNk
	PV7eNjXgEB57royalW0RW8bELqQgyQ7+LYjceC0eoXdvCoiqtgnw4RufKZn63cuCcaRUtRrrZib
	KOSyOv+v9eRCAI3jHzChj9Hf5ZXqY3LsiukVUoFRlLy5g5FgWnK8ciHZvWj4x6QYTFg=
X-Received: by 2002:a05:622a:5446:b0:4b3:10f0:15d6 with SMTP id d75a77b69052e-4b31d7f0b5fmr84398451cf.14.1756815819343;
        Tue, 02 Sep 2025 05:23:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnTBvFtWR9+eFY/pGMy2dIE87dKh+tpgUMaB+phaBNhNaU0pmdpGbW5kbwE6JpngoNOGN5SQ==
X-Received: by 2002:a05:622a:5446:b0:4b3:10f0:15d6 with SMTP id d75a77b69052e-4b31d7f0b5fmr84398041cf.14.1756815818553;
        Tue, 02 Sep 2025 05:23:38 -0700 (PDT)
Received: from [192.168.68.118] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45b7e8ab093sm204092755e9.22.2025.09.02.05.23.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 05:23:38 -0700 (PDT)
Message-ID: <9332b065-3579-49cb-bd01-40469653cb72@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 13:23:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] soundwire: qcom: prepare for v3.x
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250901195037.47156-6-srinivas.kandagatla@oss.qualcomm.com>
 <1bbacc5f-7371-4451-b503-cdd98e9f9688@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <1bbacc5f-7371-4451-b503-cdd98e9f9688@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX3ZHMdi2d4uO0
 vx5mTx8LVxqb7Qk+YD3EXgcJu0DT0ipUv1yPTbEVyBPkGmEKFhMI8ff1zD5eEnsosEr8PnSmJnm
 ei5TwDo9SBWBf7Bm/tRLoKKiPtruuyne46oQfs1aau0RHZR8c0kNpc5kBIUKcMSXsJ3+FzKO0e0
 P5LC+62AAt9N1g6u/BlIf5lzp1jYa8Af1g2OgCgcoAN74ozCva8ECcVhVbIGZVUo8u4ekmQsVfb
 20rDaJZtjK9CTKzoPgBZNR3gLdxeO4kDgEPfwnnPXFBw68hc0VewGa0zkec/aAu0RjQk2xk8ZoY
 9AP78MEa2tKohmdj66BWas6jKEi8CYi55dYPnELvM1vWb29w2A4im8s6iZn1Rt6swxowAqYA10s
 Uv66h1PN
X-Proofpoint-ORIG-GUID: PgJaq25qRJW2cO0WGKHb9AnJ_XZpIb90
X-Proofpoint-GUID: PgJaq25qRJW2cO0WGKHb9AnJ_XZpIb90
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b6e1cd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5k5mMUWOh3TyOyWPGcUA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032



On 9/2/25 11:03 AM, Konrad Dybcio wrote:
> On 9/1/25 9:50 PM, Srinivas Kandagatla wrote:
>> cleanup the register layout structs to prepare for adding new 3.x
>> controller support.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  drivers/soundwire/qcom.c | 69 ++++++++++++++++++++++++++++++++--------
>>  1 file changed, 56 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
>> index 4fa3e1c080ef..e3d248432d49 100644
>> --- a/drivers/soundwire/qcom.c
>> +++ b/drivers/soundwire/qcom.c
>> @@ -107,6 +107,15 @@
>>  #define SWRM_DP_BLOCK_CTRL3_BANK(n, m)	(0x1138 + 0x100 * (n - 1) + 0x40 * m)
>>  #define SWRM_DP_SAMPLECTRL2_BANK(n, m)	(0x113C + 0x100 * (n - 1) + 0x40 * m)
>>  #define SWRM_DIN_DPn_PCM_PORT_CTRL(n)	(0x1054 + 0x100 * (n - 1))
>> +
>> +#define SWRM_DPn_PORT_CTRL_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
>> +#define SWRM_DPn_PORT_CTRL_2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
>> +#define SWRM_DPn_BLOCK_CTRL_1(offset, n)	(offset + 0x100 * (n - 1))
>> +#define SWRM_DPn_BLOCK_CTRL2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
>> +#define SWRM_DPn_PORT_HCTRL_BANK(offset,  n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
>> +#define SWRM_DPn_BLOCK_CTRL3_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
>> +#define SWRM_DPn_SAMPLECTRL2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
>> +
>>  #define SWR_V1_3_MSTR_MAX_REG_ADDR				0x1740
>>  #define SWR_V2_0_MSTR_MAX_REG_ADDR				0x50ac
>>  
>> @@ -171,6 +180,13 @@ enum {
>>  	SWRM_REG_CMD_FIFO_RD_CMD,
>>  	SWRM_REG_CMD_FIFO_STATUS,
>>  	SWRM_REG_CMD_FIFO_RD_FIFO_ADDR,
>> +	SWRM_OFFSET_DP_PORT_CTRL_BANK,
>> +	SWRM_OFFSET_DP_PORT_CTRL_2_BANK,
>> +	SWRM_OFFSET_DP_BLOCK_CTRL_1,
>> +	SWRM_OFFSET_DP_BLOCK_CTRL2_BANK,
>> +	SWRM_OFFSET_DP_PORT_HCTRL_BANK,
>> +	SWRM_OFFSET_DP_BLOCK_CTRL3_BANK,
>> +	SWRM_OFFSET_DP_SAMPLECTRL2_BANK,
>>  };
>>  
>>  struct qcom_swrm_ctrl {
>> @@ -230,6 +246,13 @@ static const unsigned int swrm_v1_3_reg_layout[] = {
>>  	[SWRM_REG_CMD_FIFO_RD_CMD] = SWRM_V1_3_CMD_FIFO_RD_CMD,
>>  	[SWRM_REG_CMD_FIFO_STATUS] = SWRM_V1_3_CMD_FIFO_STATUS,
>>  	[SWRM_REG_CMD_FIFO_RD_FIFO_ADDR] = SWRM_V1_3_CMD_FIFO_RD_FIFO_ADDR,
>> +	[SWRM_OFFSET_DP_PORT_CTRL_BANK]		= 0x1124,
>> +	[SWRM_OFFSET_DP_PORT_CTRL_2_BANK]	= 0x1128,
>> +	[SWRM_OFFSET_DP_BLOCK_CTRL_1]		= 0x112C,
>> +	[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK]	= 0x1130,
>> +	[SWRM_OFFSET_DP_PORT_HCTRL_BANK]	= 0x1134,
>> +	[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK]	= 0x1138,
>> +	[SWRM_OFFSET_DP_SAMPLECTRL2_BANK]	= 0x113C,
> 
> lowercase hex, please
Ack..
> 
> [...]
> 
>> -	int reg = SWRM_DP_PORT_CTRL_BANK((params->port_num), bank);
> 
> all (?) the defines that the patch context shows as removed can also be
> dropped now

I agree, we can remove that too.

--srini
> 
> Konrad


