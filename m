Return-Path: <devicetree+bounces-200804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A745B160C9
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F5621AA1194
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B1FD29827E;
	Wed, 30 Jul 2025 12:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n88pAn9A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1682E2980A5
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753880118; cv=none; b=iI/Tee8jckXE2tS3Erita1F9OzUx+zFkAU9mVyoMZxHrjcQqUCdKindpAu1NAO83rLRzglKDuuitrJ8h1joFBFJDoEo8O2OoOGK4C9ZYSfRMaJmgZLuv/to229Uye+FA+dDpmSz0Jg3g7Pqrf2bb7yfntN80yWJrzp1sAaVh+98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753880118; c=relaxed/simple;
	bh=IcwJxjGaUBs19PI+lV/YEtHO4tM8mpf5SsPGKdXjFsE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VG8ej9wJThB5qDmKmOs+bipu6BupqJ99Vp24mCzofc4XVTZtkPfWsLofweeqXL2UKW43IkvJkTrxFvpXSqhqjC+RbAHE73v73y4nytvK9jb97CXS86RxiLKfYXmN3m+f3K0Meeep94FcTehy28mnFEt8H4aGk+ABhQ3as60BcJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n88pAn9A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCb6qS030195
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:55:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iisB83FXZI4F5QXhoqp7ipsU6/LoD+KKvHx3mOfRmCA=; b=n88pAn9AFVyF+/AO
	CAxtSYZSKMdeJcLofbK5pr6fSTiWeaqdc124dFcpO+QnUzyTrMYd52Y6nO6uMLWs
	gZ2PUzW7iywdrJhJMBDj0z91kJO1UJY6L5HJd9Wl/4KF1DxLJahGA+d7dwWyRJ27
	gjQKYncf9dGYv+bwW0MH/jGQxcXy+x+uZJzQobpcusZIKYzAavoFam56tOLI9AKQ
	7acLZJPOCtwx9QX7Qy1S1867bc8bUf6sAN7u5zrhi+KushZ1+G/UtkhIiiLnUp5P
	v6KfFwRdrjmBunj3SBQRR7yWjROIVQKlUdDElkwsEag0W5Iq2yzZhvYdY7UNP8Hn
	zyiq7A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwer5gj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:55:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab3ab7f74bso20971861cf.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 05:55:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753880115; x=1754484915;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iisB83FXZI4F5QXhoqp7ipsU6/LoD+KKvHx3mOfRmCA=;
        b=LjGjEX9KUlimgNN5g+oQrWV09dAWQNvpFLQAN552106zrLCqqfd2OnhluqtU4Cuq6e
         sLiLF7rQ8IkrDKtZSChNoLRz4j1ceIEsHTvSZKIJTsExCb+0g6WsC7oK1Snidvj5Hvks
         crI1lH05xTomgiH+wkV/E5Iwkclu3bw6Il7YQcDZjFpPnjioqpdUWpsFxkqKQ1kpfHvp
         BiOa/5oVAfTtoEw9+JCboDt+zSdG+xcLogj5vXOngGlmZwmzRDtIiOn/Hl5LLZljNWiS
         S9IBUlZF20b/vDBqHiZVFLSwS2lor1eumMq81XKBk2djAFqocIHD9wIH1o/1ioSRyz/U
         XG0A==
X-Forwarded-Encrypted: i=1; AJvYcCVrnbb5D9zAo0TvXVPvHAquFtE7WHKTxJrDLQGZmrOsDGIt1N/7bd6I3HLUCorENafTcccuN5cyfDvy@vger.kernel.org
X-Gm-Message-State: AOJu0YzN7OZIYM76Va9MSF+v44ucY51d5WJnRberCrlXiEUEksQQRJZI
	Nxp+lKB26Jcd0sy8JD0UwWKklgqbU9BNi7cjjGtSzRlii7mmsu7zNtgFr/AkOPQHYjFv9uyHuvN
	S0FpIBCvMHvzH4g9brLIfo87TV5+dVwZB+XXaB9eRY/KsOKbAMssv2qm2X8IYwoG0B7GsPceh
X-Gm-Gg: ASbGncsDDXTLnoXLdknDJAn7r+RYfHXhwrhzCdvHqxo3C5LPS4YTTH9/Ml/3TgJFdRV
	rDOjGY4T9zgn8URyG0iKEr1NkkSmBJ5aeLTRv7YK0nmpVXZza9zECAkfEcu+lAEVLbbgBG6rqEZ
	lWmfoOoB7E97AkPjuafc1LOpw+i/ZTI1KB5/6mfFhtbFTrx3tJRJYyu444WWO3CGQDLcQIfmCtM
	t/h2rIO3vqF/DG692IwVuP60jvuuaRaz6WX7aXH8UfnKX6r57WOb6GjJu9uPv+y8tcGtK70OaHR
	3+3Va4WlLT5sgq0cLArWGars5uQ9Qa++pXepeXyEBcHT4z+fnXacqMoODg2IWfOAyUnanSmeUeh
	PM6V89TX1jELOYGFLOA==
X-Received: by 2002:a05:620a:7017:b0:7df:d668:22ff with SMTP id af79cd13be357-7e66ef8c17bmr195812985a.4.1753880114704;
        Wed, 30 Jul 2025 05:55:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoyY3D0wsO5SLEh90EjUNCQ22vc89hWUifUn//akyEBL9q7sBkSC+N4U7QQomA6VAv1Ej6iw==
X-Received: by 2002:a05:620a:7017:b0:7df:d668:22ff with SMTP id af79cd13be357-7e66ef8c17bmr195811685a.4.1753880114339;
        Wed, 30 Jul 2025 05:55:14 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af6358a183csm744196666b.50.2025.07.30.05.55.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 05:55:13 -0700 (PDT)
Message-ID: <2ca6af52-af35-4968-888f-390eee8b3bc3@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 14:55:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs8300-ride: Enable Display
 Port
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250730-dts_qcs8300-v4-0-5e2dd12ddf6d@quicinc.com>
 <20250730-dts_qcs8300-v4-2-5e2dd12ddf6d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730-dts_qcs8300-v4-2-5e2dd12ddf6d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: F_5CEe7yTKgpDfjI8MLs2XP6906iPSwS
X-Authority-Analysis: v=2.4 cv=Wv0rMcfv c=1 sm=1 tr=0 ts=688a1633 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=QYiTujBYGv1OOWMMav4A:9 a=QEXdDO2ut3YA:10 a=5XHQ0vS7sDUA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: F_5CEe7yTKgpDfjI8MLs2XP6906iPSwS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA5MiBTYWx0ZWRfX/nzuQjQ/NgDe
 cH+SWc/s1tJzu2jacy0FinRit8ks+2e6FWUU1FI7W/YA02jDpnRRBlHIaci8YGu6henjBkRZcZn
 KPkp89ocFUarQhcwYZpPLmiHM5Wi9ZnOaVu9OGfCOQhPDFgiX0Jg/WcRF14OFvtZFhvnm4NmQd9
 WO7GheDt1BSwT5GisYwTaazGGHBEfwxzE6/bu15GQAdXMccRrGtr97m3THcPK0vS9o/gqphK6W8
 WBftJJA3D5j1XkR3X8v7TqlDHAI0U6PpKWpZD12ajXYGxyi0+Dugpl13kMPfG9Ax9D0eQRBCYbe
 kBlAXj3Oo8jBXcuCpqpa5AOycWwYr/f6qe7tTHaO1GPnD2ItNxVod7Td2f5FcaeXqqWt6tXp1It
 1yVXWJs9tzqfSJr+01r0MDOEUTXSqmIKf421uTl70GicMHQ0zvkXk7DD81sXEVQP1ba1Fqxm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 mlxscore=0 adultscore=0 impostorscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300092

On 7/30/25 11:49 AM, Yongxing Mou wrote:
> Enable DPTX0 along with their corresponding PHYs for
> qcs8300-ride platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

[...]

>  &tlmm {
> +	dp_hot_plug_det: dp-hot-plug-det-state {
> +		pins = "gpio94";

Please sort TLMM entries by the pin index

https://docs.kernel.org/devicetree/bindings/dts-coding-style.html

lgtm otherwise

Konrad

