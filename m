Return-Path: <devicetree+bounces-181986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F045AC9AAB
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 13:11:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3BA237AE804
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 11:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DB0523A58B;
	Sat, 31 May 2025 11:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G3ravUc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B423238C3F
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748689872; cv=none; b=EvHJRqsgdLvA9O9BjKxftTjvAqrgTSmBfgfb9CqlGz/LB6jKzlwwg6RbhnJJYBpNtZ88EtRcHkhIXjwRtbym/jgA7TB3Ar0b/VoXh3XfO0Ny3iAEYGX1mb1vn/x04GljTh5tjHVYRsa4UsKHI+FE+nKXYBZn3ujNj0TM8BRx6Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748689872; c=relaxed/simple;
	bh=5b46GiRsDSu/uXYhQaQ/gNjsb8GW7abqp6ixGsVYxaA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g6CnIzVqfa29itRQ0C2FS8CG+erAdgRIKykINMY9qHPrmHpNf1B6gewt4LkFCwa5sZ+vGEr/AaPKiRMRmGS4fvzhZs3j3O8h8aRjZIat+71XYvRQhQ+Do0P4AHI24cUmjBHuZOfzrh8Z+J4Ix/2PL2TD6ox7+WddgfLKJV5bsRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G3ravUc4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54V4I9QO015456
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:11:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NZ+vE5pX8HZbB5flVQGgvGJmT1zk4uOzkDXJe6TM4M4=; b=G3ravUc4nBNsbkOQ
	Rjnu9S4rlJRPOyooCSimwQq0FtSVYBF1UVuI43oCa/NAuvo2OC6TXHwTo/dmwamh
	osWY4F5qH82MNUs5wpxux6M7OkpU83ECW8OGOuJP0cbf4+b+eDJX1WLGr2uiYDK0
	JV1I/5YzafEbaXxNJaHtjEuSW3SLcpgSib+cyaSLynzL9FtEDD5ZZg7TKz5YD5J5
	SFEc9TxFrxchAIcVaM1falgXRASIXiKcu1md2yD+/swedlp978FzRN3554PyNYJn
	+t0HETJV2aPW5wJGik0Ld6dq6B0wiFody0HYCf3ESwCb18a0k+NrgwHg5GG5DINL
	E/PiwA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytkw8gxy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:11:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d094e04aa4so74395485a.1
        for <devicetree@vger.kernel.org>; Sat, 31 May 2025 04:11:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748689868; x=1749294668;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NZ+vE5pX8HZbB5flVQGgvGJmT1zk4uOzkDXJe6TM4M4=;
        b=SYVn69VZnn8M4f8lc3KyI/U2Nm9u8OpXAQenTYt1QY8F71r2TfqZ5uEvtCzNAbvNgw
         G0FvHGpCEC+Or7uF/ACX0qjoLl6CkEez+rkX/HRskiZZCAuS2NFs2a79aTkFuYgCFxnH
         dVNB+HETMhNMIRWefCtHe4bDSM5qi8q+EmVfNS2Gxg1TAmPBgPKq6t23iI+Hm1B5KMsK
         uAcPxhFwjNsmp4zThySO1TcU9NOgOIcEukI7qbziU0Qst5kz/nDlxoeG44jMQ7K6Y3P6
         b5viLHcIQGqlq60Irl011kQ7Y5A1N+n8CHlEn8LquDsyX+Wff6KZ7tQK95+orD2EELeg
         AaGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfVQKF/Dy+y5ctGGiOOjoaGYRaF5VOlZEDgpvitkHFnoGa19FCLc0sHtCcy34yuHS0BrCkdKm+lLCU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5ucakPoyKRSLalSmKbRpx/FdeQbx+xnE3J9YpDRn1SPLIp/4Q
	AVYSjjf0L0C372Q/LgShwFv/t12zLS+2I7c/ov4yK3on5XSrnwHBFPc+I5Wg7XCDJPSQ1CPanRa
	fr4IYZuGPof5ReDQLXzOfkzSEhcUk4MxEu+ClKUcOkG+fP5HUtVbn4w/RmqqQhEvZ
X-Gm-Gg: ASbGncuaPBZA9c00EZ/wZYWvB6LH3yVjqA5YJ5CQ0FYkCa3QedGWT4cXgO0DTyAP3jC
	NY6fplK49iLUSc2ZVkXPs/GhCPqplkQfrIpoZG41S2sG67IsK+JxtGrXQypKyGJBWiUqBJivdku
	4ePIXb9zu19jNm/OFdP2ruiI5ph21VJ3T+gTqcGA/rbfGeqJfyBEkQIArH3QF62uu+B+1Pz8Hfn
	vZX12n6aRd/RbOVLimtFe7PoivRY1IcWjrXHYUYPiP17N1wr7VxvWu5rDc6MTWZzbK3m6qYtEVM
	+zonIfo2u36kPkIASveFJmhogZxIC9IKdGa9/lNFsCt6qh/khro0oCjL0IjsBbdhHg==
X-Received: by 2002:a05:620a:40cb:b0:7c0:b018:5941 with SMTP id af79cd13be357-7d0a3d978d1mr297825385a.7.1748689867843;
        Sat, 31 May 2025 04:11:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSvAl3+81zPxT8GtGObctxByRCmdXGFKJiq1TFWGEKnxHTfUWMUwJ0OE/8YtwwGaBL7+oiOg==
X-Received: by 2002:a05:620a:40cb:b0:7c0:b018:5941 with SMTP id af79cd13be357-7d0a3d978d1mr297823185a.7.1748689867482;
        Sat, 31 May 2025 04:11:07 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82e760sm486122566b.52.2025.05.31.04.11.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 04:11:07 -0700 (PDT)
Message-ID: <8c57ed65-002a-4ddc-9056-6b7908c0ff52@oss.qualcomm.com>
Date: Sat, 31 May 2025 13:11:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/3] media: venus: pm_helpers: use opp-table for the
 frequency
To: Renjiang Han <quic_renjiang@quicinc.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
 <20250530-add-venus-for-qcs615-v8-1-c0092ac616d0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250530-add-venus-for-qcs615-v8-1-c0092ac616d0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JIE7s9Kb c=1 sm=1 tr=0 ts=683ae3cd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=3ipQxu46YsJ9vmREi38A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: yNm8WrqDI9JYu3RPJ7bPtXV8_ycl6SvK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMxMDA5OCBTYWx0ZWRfX6vR59ll6/Nek
 Azd3hdEnkxEoSWJaVMZne1VgRV7/FLtzmf5hmVE3yGB5CKSetzSO0QKhSCan52m5UwGtB9Al7pw
 BwK2iEFSUPJqFSx4r7h/6kCcdtqwPRjSuvJzQmk585dmBrLYxfQhjZTr2/A3gl+zDaqtyajPehH
 QvEYnazlmUmqv+dBKSNoX6wlEQPuvqVySk699NlmlEMWQuQzXto1BUhXL4VVDTYbTgZfP8LVRZy
 nJxNVhOEqG7zlp7DiQboaRVKUMKhd7EtayMF4d9UTJQdp/vNEa+c6GbyPTN0vDk1POdUlxDwObj
 SFxpY95+2NhE1myNO6WHL2y7Jao2O+hF/n0RPQmr36N6adD/YegvreHDb3waMDz4pM0uKRCtnp7
 42FVEYU63CkqOQiYq9ngFuzZIAedCuHDVzpiiQ7lS5M4Nxg2GwUSaDJbcLMuwaqgG45XQFtD
X-Proofpoint-ORIG-GUID: yNm8WrqDI9JYu3RPJ7bPtXV8_ycl6SvK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-31_05,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=976 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0
 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505310098

On 5/30/25 6:02 AM, Renjiang Han wrote:
> The frequency value in the opp-table in the device tree and the freq_tbl
> in the driver are the same.
> 
> Therefore, update pm_helpers.c to use the opp-table for frequency values
> for the v4 core.
> If getting data from the opp table fails, fall back to using the frequency
> table.
> 
> Reviewed-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> ---

You can save yourself some error-checking pain in this patch if you
do something like 

ret = devm_pm_opp_of_add_table(dev);
if (ret == -ENODEV) {
	for (i = 0; i < freq_tbl_len; i++)
		dev_pm_opp_add(dev, freq_tbl[i], 0);
}

to programmatically migrate everyone to OPP..

But - tangent - I'd say efforts to preserve compatibility with DTs that
don't even contain frequency data for a given target are rather futile.. 
Such descriptions where we only know the frequency (be it the tables that
we currently have, or the constructed OPP tables that only contain frequency
data and no voltage corners) are incomplete, and if the system manages to
not crash if the driver requests a TURBO/max freq, it's all because we got
lucky, as this consumer is not voting on (MM)CX.

That said, it's probably to keep the breakage to minimum, especially
given this is an old driver for old hardware.. I'll add the missing
OPPs across platforms with an intention to drop the hardcoding somewhere
in the future

Konrad

