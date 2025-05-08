Return-Path: <devicetree+bounces-175115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 398E6AAFD78
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59395189B475
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0852F2750E3;
	Thu,  8 May 2025 14:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nhBz36HB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D42C274655
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746715391; cv=none; b=s86wt0+qB9wTjouzwshGwl3Pimh9TRP3RTv5fKsHgMYgMEbk7m4wj7Ul0xGo8dlHTpScum1osi9+WIgJwuYTEmBkR2JONZy5J7R+LDTqwBftHC2HcKUNAKjoEajJUxwQpI0vCFd/h79LpRBwzrucpk5bzhU+6ITBxFMH7UmSAFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746715391; c=relaxed/simple;
	bh=f568pbAx7mKUVyVgW6w2g088VmARJllh8QoWO30N0uQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sNlpSxnvFH8IPg89GDFSmZFbL/DpBSDbK5bpSD4vsqh1oLQ0QMW5xFQDpsidZu8Dyf5iC4H5oy/aXGVYq3Jl8iXAy4nucbssAgf+oNWT0gdf+6hKZdhHgWMpbRLfXzlokr7SwcRNjKr18Pv597r1hT3NLmXpFMzL6C3jzkcTa4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nhBz36HB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5489bWDN011768
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:43:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YTC3vuWt5RQ4AmGS1OJjvC1wx2knq2oIlkpbuOBdIZM=; b=nhBz36HBlwYTsk2s
	wxD1kT7zvzzoiDt6/Bro5WotUE7hI1HQ8GQs6ELapDMkpJP8Jwgc9rXbiglGfO2s
	Hpgi3n5Ea1aBCckZ1LDpg35JoU4dhDKQtK8LrSZc9XFW2WIKML/SIKx8ejSiHlNd
	Q3tWESt1MtqkMd16f8vjXmzRYzUddm/l5xeXEHIcDNyatd1JHx8PGXFCCrsTVYMI
	ouKXKz7QPFVE9/SWTrHiQA0CwIwMB3EyG8nNlRE/ZQEEA1yy0aZkva91DPsDzVAF
	hKBDAqRuOm80ie9xYspAE/K3We+ckvFnODp4xT3P5O8Ky8hN1ZQULzHp39vyH2BW
	K94llQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gt52ruc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:43:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54734292aso26474985a.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:43:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746715388; x=1747320188;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YTC3vuWt5RQ4AmGS1OJjvC1wx2knq2oIlkpbuOBdIZM=;
        b=AKsntm1+P3hSzWs/RjTEvZvl5jTW8ntuOYUs9QophqYE8Zs/uFOTKGC71sM6GCXR6I
         apphlwelHYd4wPy6SFSSxM6Eaoyamr+cs5Q3MIsZohfJvwsofCtDFdn7gK8K1tJ1r/4G
         +re7W39K7wzPMElN9R5Bx03hOZHwK72UABrauiimfBIBLJIWkp8yQFNnEXCeHNM6Vuho
         upfht50Sieqpxnt3twlfeIRKjPpNwJS75vMfTsZUwEpvTJteYM/OcxOseJMwNCP2mIpX
         VlmVQKfkGNpnE9qfAMJd3QL82ZvPDYW9db9nCu8bmRlHjXfcc7mE8+c0tj54jz7NI1nH
         PgMA==
X-Forwarded-Encrypted: i=1; AJvYcCV09UZxzBryhuP/KnPZGzMTbx6PAxHJI8J8Y9aC3j18N+U/iDT7C100qioErv9YBCVZqNxEl54LdgQ+@vger.kernel.org
X-Gm-Message-State: AOJu0YxRjvK6PMnFa13jjpZ9HAFbwy4nLoqLhMpXFl/J11WqZPnCfDTH
	t/Tv18qQc+4JDqfmrbRuYUw5Hhgv90jFFjM37bWoynVr6jprZzPr17ldksjfZ3cRZ4lUP/P4y4e
	aGdr3ucvO8qBRvoRk3rbQf4QnkFP3Lw1Cy+JkCqZLnLCNXB39l/27f59fSZc5
X-Gm-Gg: ASbGncvYYPK3ivH2Fh7rZzh5XrW8RvTRByzO42SHQ1348D/vxvmyt9MvUeszN8nf3io
	l/dcSZPOOlj0aBEDT+qNFtvaGMfjEDcmIWyhWIyEt1+y/TgSzqXCMKZqvu/Xmyfv8pqzVr3Zvn0
	Xei+8Og9UQ1SWhgzcjYtCe9P8Tdo9JRQlMo+TpXR+Kc/AJhgqYP+35nK0rAljxloTFeK1/4zm7k
	M/rm5PgI9hh1cymeVD/xMt4OCad4uSvokZh+AC4gcG610b0g16OZqwqyRC/29NR3iZZEHgdPEIo
	M6/vF+YbTfMyebqQFcoSwKRuy/glGqxiCXO8jdQirJS4TXPx6/mEbLgtYRqdflDlkiY=
X-Received: by 2002:a05:620a:3909:b0:7c3:e399:328f with SMTP id af79cd13be357-7caf74079a8mr386379485a.11.1746715388452;
        Thu, 08 May 2025 07:43:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELEl4ogSrPxozRoWetBNvU9LdP3GlTW/6PjQ4l3hnTs4G94EVNqSCkQCz4LpTOz6QR65diDw==
X-Received: by 2002:a05:620a:3909:b0:7c3:e399:328f with SMTP id af79cd13be357-7caf74079a8mr386377285a.11.1746715387927;
        Thu, 08 May 2025 07:43:07 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189146f74sm1108396666b.17.2025.05.08.07.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:43:07 -0700 (PDT)
Message-ID: <b0e66369-5f67-4fb4-add4-5b5439ab4f62@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:43:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcs615: add ADSP and CDSP nodes
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250507-add_qcs615_remoteproc_support-v2-0-52ac6cb43a39@quicinc.com>
 <20250507-add_qcs615_remoteproc_support-v2-5-52ac6cb43a39@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250507-add_qcs615_remoteproc_support-v2-5-52ac6cb43a39@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyNiBTYWx0ZWRfX0U4euSyrdcGW
 3AnUvtoj7akZ+zBjPeiZKQJQjjmXV3aTjQWdHvDnMQc0/JoCuGrpxRyFPY/0ALXgiEtQ5Zft/BU
 2RgpGx9y98BCkHWGdq3bYBWpSNw+1SMIocQzVpcpeYaAqBkU6B7aQ83BW5KY7ib4IiTQF+aj/vm
 PbkBXOxbK9i1u9ThqrtbyP9/qNNRUnKnutN2RImChHZSMecwO2Pf/b3ULe7KOSgGjIHGrOYkb+Q
 BvsnEHXVtDFQKY9yhU0rd0IqS7l/nxIUm+HlWAW0D96kZPnEEjXB6sgXr/49CgCSQ/Ghuznafoc
 FPoansRKZD7RBh/ty8qgc+XVkhhfdi2Ltkv6tDhRoDggD3oQR/TttzEeV/SAegnbgZJi4pL9mSo
 EfTbehlBWYSVp92MtWfe7iaW3Ii4c/ZueuZ1XmQ8lH+ePdjke6eYeQXXKHeY5kxI+atI92zx
X-Authority-Analysis: v=2.4 cv=LKFmQIW9 c=1 sm=1 tr=0 ts=681cc2fd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=jONUQADHCp84k9KtN9AA:9 a=QEXdDO2ut3YA:10 a=85N7vG7B_AQA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: yV_s04Sh4dfRk3yDu-V2YJc4aIsF7sca
X-Proofpoint-GUID: yV_s04Sh4dfRk3yDu-V2YJc4aIsF7sca
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=592 clxscore=1015 lowpriorityscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 spamscore=0 phishscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080126

On 5/7/25 12:26 PM, Lijuan Gao wrote:
> Add nodes for remoteprocs: ADSP and CDSP for QCS615 SoC to enable proper
> remoteproc functionality.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

