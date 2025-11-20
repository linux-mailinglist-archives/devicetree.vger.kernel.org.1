Return-Path: <devicetree+bounces-240675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E38C73F7B
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:31:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E1A6F4E922E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC546334C32;
	Thu, 20 Nov 2025 12:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NHni3EWA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IxX/85dx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA02332EC3
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763641800; cv=none; b=djvHL6bMlhMikXs2seN2eG1FWQ2hy6507Qc7pAvA4Bkv4ws9s2qo5lVrdc6Ur4Yc358M4b858TfCqht3lGhb1UqN1y/LqGkMj90D7CL0TEJvx590lOyqQkWyPTh6iOoYorI0ndZyrXSfVdjHUrGCFL3cbZoF7STU15rPwagokts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763641800; c=relaxed/simple;
	bh=DEw9sPG9zerO/HnT4RfToet0VEURPZ0G3fZWrk3FH7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FMwdSqs3Edw9mrbUjhxlQkhU3n1Nmh1ElfbyuCX8ox0cbYoHZBdk5r5A4SVq8QOgOYNOU1BRpo3I30Jjjqnv9vCP64RzMRt/fbDPB4cQLcoCZqeQGnDltSBM89TT9eYoBNBjnPYr5BBiPE/ZatYGsgCdLDW0AOzem2G5tknq1fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NHni3EWA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IxX/85dx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AKC3sB14026682
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:29:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wC1bDJS+eG5NXOlErzSzXLW4GINozbdRDqdaK6KkcX8=; b=NHni3EWAGa3sCguw
	ej5JRrfNUo/s1veWtXGDMZ9QGlCkhCy4TL2ApX2VELcKaP7yjHbQxUJ2LIMZjNfW
	2OWcpR/QI2oOlEd238NScvMY7QAySj+vyEBKrfE416kKeUZCzgWFm7qkszqgfmlG
	AFNEC6SRvgPjFd9TiUBZMWh5LNYETu+VC/IKjPmk0wQZunZHtg0KTx1tUzeOjU4z
	0gQOF/lRw2fYhcYm83a8Pln13eZt0gGsGbnWCcblliih8ZmVkshofd6C/JR9zID3
	+TiXXWIam8g7f4PSKCVv5BZ1AImu/iGjZBgs1WEWp7MNkyCzYjHJfM+vQgqnYr65
	ceF9ZQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahvj3har0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:29:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed767bf637so1133671cf.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 04:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763641796; x=1764246596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wC1bDJS+eG5NXOlErzSzXLW4GINozbdRDqdaK6KkcX8=;
        b=IxX/85dx9KRW63vftukEBRFUVz8VswLZy4ceZyGSnv53iDR7/8c8msTZmPNyfqyzUC
         IvB5teNiY8Qm7oV3PYVzeQEW3JF6cPgNilUEKCw+uz1/pkvRgW6eB1gMFVJz2lLPI9/3
         jNFSbCnFbqYqjPHCPvTkLVG1wjm4EaU4R3wSomoKJJYbPnrUaFkgAKLJs2iLhzBhTToP
         Qazvmcai7ML6225S7xEmJ8fZKBzLkLuZhlzqBxqxXj0QCiGAeRZOu/0/O6XMGNb05wL/
         GTqJNtCHrO4j9KP9sBm+eNJe/l4x24rhD62k+d84jM5Xlyw28Cs5K0xXxEDhGtd/XIMY
         YA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763641796; x=1764246596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wC1bDJS+eG5NXOlErzSzXLW4GINozbdRDqdaK6KkcX8=;
        b=g1/IR0rVvdm8kTz4LSPAMZ8f7FGzDPHTRl452Sww3qtffhvS/AilU3JmQWfbhkZsbN
         zk9iv1cZYMfyeTFppZujcf5ce1VtJffPeOLnhK+XLBFZbGqOmVYjHsHzfHeDr8YFfGno
         MdK/tOxar4zOb8pLa4qn6+7hVfwFC9eFwgatYqwpbGRN7fUQbl7H8wSzWokIuCHW7Szn
         +7cRoqulMr/9syzY/fmN7hoQ2zEF4WfM12na1cXhMsP6vi6HrsslSWddY+5N94SviLGl
         Ijjl/sfO33N3Eq0VVRLn/9K1BI3YS4Bbwo0GD5MolEv5Z2IK/2ayJ8apYv0EpEkVyRep
         DGYw==
X-Forwarded-Encrypted: i=1; AJvYcCW2iqlsVmm+gBLjz8mnIeUo/gyEYD3v2UM96oWLPZsqMMaCGyeRl+5/68wrKh30tp3uquiDfUZtkEC9@vger.kernel.org
X-Gm-Message-State: AOJu0YyEA0/sqAlOqGP+dwcU+xhmAXrPgAUWlscBnR16Cpmxi8Esn8Ak
	kygpJSI0UiJmxpK0VKjzXRzL8DKBPBmqvWu8z5WzDYiDQ2giQvv+VCijTveb7PFwTDwR9n948bX
	hU9xU/B9FjISiA9SgFloLPYX0x1URYPhgSYoJAwsm7Um8R7k8tK5r6q0HXukx9OcG
X-Gm-Gg: ASbGncv76HEGPe5HUnIwqT8DqbaTh4ann0kMao6HtsFfueADgwS+Y0cLzByGBMeIAtP
	fbV3JuppAnRKCw8G62rywnsaA/nCFvZuiqrV/rK1fax3m3aqFC62/QNXbDA12LgNl1fI0NB3nBx
	Bwm3+y8iZwC/J0c1X5dkbgvkLPmjk+ZPP9t7W7gyLBvL/+t2a6ovOblwpTRiX9JWDP8KJbkXp/8
	N7Hs/h7dbBj36Fu2Oi9WncwF8SfJcVznURKjQs7T8PBXf4qhwwbJeHgIG9b4cwTZGMv/gpRl9ON
	R75hD+ppDNCMSPyyZe76JfXCgzZ5uXLDhk1A6Y1q3vYZfg26Rk1mjbRTAotG6dBqVN4m763ppp9
	+2XF9m/At4oyU3bJ7KNhevN/A9oLntkDTreSmstxiMBA1PFDj8SlrMeKdibWV4hWdoB8=
X-Received: by 2002:a05:622a:1a87:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee49487384mr26797391cf.3.1763641796408;
        Thu, 20 Nov 2025 04:29:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxipkU1ri4RqgxFSgzO8ij1EopO0UAjO1tOErlqUk3ErCGROqGvIEGb3LumPtothhuFaXd2Q==
X-Received: by 2002:a05:622a:1a87:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee49487384mr26797091cf.3.1763641795998;
        Thu, 20 Nov 2025 04:29:55 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654fd43e2sm194018066b.39.2025.11.20.04.29.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 04:29:55 -0800 (PST)
Message-ID: <95a0454a-379f-432e-a9bc-a691f1689a62@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 13:29:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: qcom: dts: sm8750: add coresight nodes
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251120-add-coresight-nodes-for-pakala-v2-1-3f09ec715dea@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251120-add-coresight-nodes-for-pakala-v2-1-3f09ec715dea@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=J8WnLQnS c=1 sm=1 tr=0 ts=691f09c4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ajAg9ugS1Nz8UD1WXfUA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: hhySKHQi5vnA5Ck7voY3RupsQTK5I3Qx
X-Proofpoint-ORIG-GUID: hhySKHQi5vnA5Ck7voY3RupsQTK5I3Qx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA3OSBTYWx0ZWRfX752i2zns9YY5
 1aPnExG8bChzviMSpvE9Eem0BgO2J082Pt+EANAmXYIR7945w7uNCruhu8rrLUGxBZd4tcinycY
 DDqt7Ma9tI2jIYzx7XuTQizV5eXHhN/EV/UHS6d7srrHrCy/Vb4qsP7ne6pa6llyAOVNEzka4Ui
 CtLbCNPtXHNM/KqyOjjin4rloJGjCREykcVCTmZIBvej1EE5DRz4iN9Z6i43/ZN8+gxt20vWdgq
 ExFFrrGzbl9qi8EcmKmp/pmkoFNiPcrOQbIigCcxH3TpGkHSmWTfpM1sSX3s2daPIAlREPt3IL5
 Ua+80TzobuvAi8RwFZqowS5aCxs47WoVKG0B+TJ/tSiQPzRkFcXR5BAREw6MF3vpixchfmFmBRK
 eF59MCpgW84FuvmA7Ve7vJe++c7ccg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_04,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200079

On 11/20/25 3:12 AM, Jie Gan wrote:
> Add CoreSight DT nodes for AOSS, QDSS, CDSP, and Modem blocks to enable
> the STM and TPDM sources to route trace data to the ETF for debugging.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---

[...]

> +				port@0 {
> +					reg = <0>;
> +
> +					tpda_turing_in0: endpoint {
> +						remote-endpoint = <&tpdm_turing_out>;
> +					};

Please rename *all* instances of turing

Konrad

