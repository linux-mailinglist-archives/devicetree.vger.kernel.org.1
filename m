Return-Path: <devicetree+bounces-244277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2E2CA302B
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FD1030CBB49
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334223346BE;
	Thu,  4 Dec 2025 09:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O5QddFXj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fSsyT60r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C063335064
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764840654; cv=none; b=NT3wRFUi/MNTa+C1TszuoKdUhafB+1HYlCiT3tufRpweJFPwCXJ2Cc6plt38wwtzXG1aMMSWoECNPK5yI+Y/lwmVnH0Xb9FbGewgquXPqmyoxVY8DQ2aEk0mJdZjlTb5pCLuPc+5CzEpiu1UKMEmN+8raw8un0EjN17VeH7r2KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764840654; c=relaxed/simple;
	bh=TBz26Cy10C6Fv21eVbj1sydmxq7/oUaPVnXQT40SY5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nBD4ktMRYNB2s9F8LCrm1oidH4X+W31b9EWwfGqZKBiDbhT9IvgAFxu/86MJocAoi7NLRnHm8Xsn2Db+Okc7LtCPcMF8IZ6/ymuU37ldHHvLwCzfkraXl2QvfLrv59UYpwCVZ7P0R/h8HzOzwpLEob8eEIT/lqRSo0VUEuhq6go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O5QddFXj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fSsyT60r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B48UmBk1045562
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YHZIS/ifGG1Oi6aVWQjKLm6950VSJb+EI1VzQSHfDCA=; b=O5QddFXj5oDC78Eu
	AFD5D0c9iubG3vkR+/J2i1qxT3ElqH9myB2/Ni0eABOe4motCjDWJRqaRrzfrqmr
	rCqrsAW06wJ9Mdd+pN2kXo7dsrXcc/iAoOh5eOstWxEDjsbqDQRis+H+2rtbsdS8
	qioiEqo/yx7vrRucFB/2ccooRVd88Zf5F1qFJuS22jQvHC0nTkO4lKUPCX4VNQ6J
	dPnk2aMfigsN0+4dnNjpU3ExnmO/CEWqcr+BYlS7QncP05Jahf2jwcddRKDC5D60
	wSbIVCZZ2r3DQV9HrzD647Zkw6/IXXfQn/sPuTfJvyeLe85KIKzLCwwcXHdPVXl/
	O8mSoA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6uvr7cq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:30:50 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8881eeefd12so1821416d6.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764840650; x=1765445450; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YHZIS/ifGG1Oi6aVWQjKLm6950VSJb+EI1VzQSHfDCA=;
        b=fSsyT60ruAgYDARGJVz0gF3Ik83GQlOzMRrmSYHEjZvQX6E0dgJqp5FTeSKO0Nfqe2
         gXaZP2hliz+hR/Fu+atHHC0XnTLQL0E3hGJ3EfOUDJALcSuRwf+RDc3yw30kl0sqYJx9
         Xkk9K8jYPzXe/yuyXN7nRqgbyqJkmHv51cc29hb9JPIp7p/JJQ8gZ0oqsLThpOLxEZIN
         OgIJkFC7/yEErW+aqdC3Y5UcO3cQiIQ9enGkW7r/eA50EdSKDus6tAyyl37hXdlD51E1
         CmCaZ9AcLusk0LoAlMA4hnlVriPeSBXsQ7GK6oXvnmBf9/B+gVfUM7SwDiHDslhP98Mb
         9L/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764840650; x=1765445450;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHZIS/ifGG1Oi6aVWQjKLm6950VSJb+EI1VzQSHfDCA=;
        b=ntvu+SOjcRPesxnfjWfHRoJNSN1r9N3FTJjqQ5jjhYB1CVhmA+8DQ2BFZTaMZveR6Y
         bjtdkSWlLq18pSNzFNxI/z2Q7eVaK4LC6iROV6FMJ2OnFpctApi0YI1sWa2FK3cv1bcd
         4tiOGaYEzuylSO4bemiov/fvYIYwV/GmY0a1BpVBhQmBZloMRjhRRKyJxhs5kIu4aW41
         IbxuOXg9i/h76j2YphOm2KqbxKDIiuTelT5wJjGIVgrxJcoqh7TnS8Co/3E5kILcj9OM
         /GYmShL1r0jm0cmTqSZpmVvTAt06cMHtpm1VbcafHcDu1JWGoGt3FUWspUGu55Ct+pOs
         nyqg==
X-Forwarded-Encrypted: i=1; AJvYcCWrZETX3KXCUT/12rZ6zrWGR08R90vt48YyJ8x4B6gZzyMvMN8d3fDwFqLHtybIDmtH2iHCcpBcb+vH@vger.kernel.org
X-Gm-Message-State: AOJu0YxSRqhVSPCnD3wsjx//mf7B1+YU7dF8G3e0gV4K0ayND4ZbBeT5
	tNocgTtg773+CrJHXJkR0zv1Z5QxwYhxLcjdI/od8iKF0l9I4geEK7hJZ8LQZrzg+y1Zb9nRAZF
	nXI/Ltic9pwOzaeZBNvHxjhfK37QmwEWT3jansKeXunlbCIU9Y1kn7Ox3F8om+sef
X-Gm-Gg: ASbGncsW6KXuJa24zEjZ0IbTivAchLwva+Nai5iriGhhgTEbglz6N2AbX/1J60+KeQz
	qukp1fUSfucJfsr8G+O4u/5EsEZzQvJETXfCsMWJdplV57FAnC8/EkS5SVzbKY7ZqxifPYzw2gf
	oU5MR/kmWJMuqM9cbQvNzvM9HqS5FvNP9jAMFTP9L0RWW+MtKFZ1pM5bXvYSGoFUCrjgmIYk+la
	GzMqJxcxHU9GbVVUQQxHT97v4657CjSbKrDrs4HpvjdwHGYm321u7+v+fJWn2iZTzwRvutAlQa8
	2GYQVaSh0wU7edad+F+DgboAYqImF0AD7Usn/0G+kC5c5F9QWo95BJTdgj4jmJXRc8CdkT2uzdo
	nyZWIJS6CUcuEAyBP6V1g6hYHeiqvm3IKAfGQnWTsZT/D6JNB2IyEn68HK4sppAyXyQ==
X-Received: by 2002:a05:620a:1985:b0:8b1:a4dd:3d66 with SMTP id af79cd13be357-8b5f8bffce1mr486936085a.1.1764840650289;
        Thu, 04 Dec 2025 01:30:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHNiLdjRNKO9ZcI4TFhvnmYWWXLXzFWvAeb2BmQ6tBMrffZy9O/0DUsPB+d6zCalUQC5juiFg==
X-Received: by 2002:a05:620a:1985:b0:8b1:a4dd:3d66 with SMTP id af79cd13be357-8b5f8bffce1mr486932885a.1.1764840649717;
        Thu, 04 Dec 2025 01:30:49 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4975c88sm78208466b.35.2025.12.04.01.30.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:30:49 -0800 (PST)
Message-ID: <46d2aa15-6866-4777-a080-f983ba3769d3@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:30:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: qcs8300: add Display Serial
 Interface device nodes
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
References: <20251125013302.3835909-1-quic_amakhija@quicinc.com>
 <20251125013302.3835909-5-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125013302.3835909-5-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3NyBTYWx0ZWRfX+wUyReXNmRAW
 Cdoomej6zndGS4VpeEyLt0oAsF9Dd+45YEvzhCRpx1q9BCZTGylC+TT1DwaZbihKj2mNMddLo60
 oRZxMLOOx+CgHYy3ZUrvJrUTN2zb3YMszqMTIjf2XrLrN/meAdnFjqgWV61qvOQOXGr2reIJy/w
 R72yhkrNYP8/Utyb2sKbYrlXdeDQeUCFmk7p4RlakscnEJjAWknRgN9cqyMPhcf1fb7HbfcVd2I
 CBCtObKskcGXLPituM+nJ7IUlH04MAYTMT3E/shjAcpcHnAUdtdnPlnqVVIZybCzqxFY1meGAYP
 JYHv0MGHtVCgodLo8OBJ8D78Vfl8wVVLLp8IOzb9k6AlJFA6xzSeDYsougYL188ZAoGaIO194HY
 az0pAaBw7TFA4OdM+XSoJRIwHCFSTQ==
X-Authority-Analysis: v=2.4 cv=d7n4CBjE c=1 sm=1 tr=0 ts=693154ca cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=OIU6w6j0321fZR4p8lUA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: dGXDSNVwTtvmpJ536HgCl1s_DMpOljY_
X-Proofpoint-GUID: dGXDSNVwTtvmpJ536HgCl1s_DMpOljY_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040077

On 11/25/25 2:33 AM, Ayushi Makhija wrote:
> Add device tree nodes for the DSI0 controller with their corresponding
> PHY found on Qualcomm QCS8300 SoC.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +					port@1 {
> +						reg = <1>;
> +						dpu_intf1_out: endpoint {

\n please

[...]
					port@0 {
> +						reg = <0>;
> +						mdss_dsi0_in: endpoint {

here and the other one too

> +							remote-endpoint = <&dpu_intf1_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						mdss_dsi0_out: endpoint {
> +						};
> +					};
> +				};

[...]

> +				clocks = <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&rpmhcc RPMH_CXO_CLK>;
> +				clock-names = "iface", "ref";

1 a line, please

lgtm otherwise

Konrad

