Return-Path: <devicetree+bounces-239803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBDCC6965A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 46E372AA2C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730CA30F957;
	Tue, 18 Nov 2025 12:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KwRRu+MC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xcsqcgkw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB78E257827
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763469210; cv=none; b=ZlC73sWL5lHTokJFqICyIJnRbVVmpyDnuyfqlpz3yUNbhDko49UhS9ug1Ewm3q5v49ZCNkRQLmjGBxiZsxBNINJN7PxHBiwdFFPENBSTMs10Uaz9nnKSHclu8cReUBuePu3yajq6Ljew27HTse7dY+TC3yZ/wKkC8EUncGuZI58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763469210; c=relaxed/simple;
	bh=yJJ6IeTtTpFGE1AGu9hntqLU7SpeHDHsbDpHfu2Ayao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KzaNmyTTtD4R26GHh7OPrcRQpwFx6HrQ30cwx0zZT2G7t3YAShWkKvU277Y6yybsOszsOQN40ISWo4ptwWAbT9ciB05SO/8QAATbRIKA3598hJVYwn3ZPUdfQjgEsFMyfJoSSHe50SCQDj9Gpjd/rHqc8rahCPn27owLkVz/+fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KwRRu+MC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xcsqcgkw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI9rLfJ2664745
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:33:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xWH61jHILhuuM/eqN9zZnCfpTwI2FbUKKoAu6Ut/IXg=; b=KwRRu+MCgOwJ74KV
	IByhtwyp+OmF+NIBMsdfaKXEwLINLdNDBc9uP8PHmzmN6nLD23Gp+Te+umlxSy5W
	D54l/pGPqxwaYZbNgWBq/PYy9Kc7nS5lt1ZFcIJNEhxJtDQPaiUT7GUKcaLu4k1k
	PHBRFAZ+Qs6rBcqY52VBEU/jq2Ceah/+JDHXqzV5ImIm2JUf0Trl0kOTv2SPlc9P
	3eDWW7niR427sTkCU6w3WjCOu2mgZr9W8CVZY4ERG5/uT0nteGIfe7Iqm9LiJeKX
	TzFl2cpMScntfOXXJRhPc9wgUC960x/MAi4raLq2uBfb+SCTlUj2xpSdMHy+tbs3
	PYNYtQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agpjk8det-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:33:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee05927208so10713231cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763469207; x=1764074007; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xWH61jHILhuuM/eqN9zZnCfpTwI2FbUKKoAu6Ut/IXg=;
        b=XcsqcgkwfvDU1pPambeuwzftbKoQhnx7s7zEMdJ5vZgRwe7/h30iaGbrxHZ9lkf51n
         WgfwCY60n3l1F2fYnUoYqsUR++QMv94ql3h0tJ7KQnGxcyB1Uw0/E5BV7afTsns76c8n
         4LE1ZlEClvV4zHjhi8JrE/Dz10xI78Q35MpEIfCzdVSu7qRY3Fl8r4ANID49fZUFwRJg
         lMnA0ZIWijktJNmkpaSsLgiiwXkLzXjUmChs380ThtGnZgtvuHTJf7I03wmLczYy0ZoG
         8Kui64mzTrduMARLB8se46MXUgtYxWxz8Mby4kNyyg7XSflW9GUgEBLdnyfXaYbQiZwQ
         SpOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763469207; x=1764074007;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xWH61jHILhuuM/eqN9zZnCfpTwI2FbUKKoAu6Ut/IXg=;
        b=oeYjbtK962MmQ6DIc5nKPpOqhmhv7xha+LfRD2yGBYGZl84Y77+PaQM+AD40fKBi40
         Ok1AmMMrE2hKgY+7ma+o9NY7tZzIQjl2Pm+zHa+vALQIfasuyXcnqY9K0kPz4gGtSqwf
         8vtTnCpoeucXMXZ4C7tTj0z3Q5jMJyRzonmPy4NO+BYGXkAJj3ODy9BhPzEHPVrqMfj+
         IbUF5bg6qGRYtHbqCRmf9FzKW5fudpS62ljIpSSqRCDSVrUPvuy0aV8Inr3OD8tjuSLU
         t45UA/1A3JC5tbaaELptXOEPjDaxc6APd8M293HsoqOzUBfH/AkYQ9xex/crGgKjH780
         Qlew==
X-Forwarded-Encrypted: i=1; AJvYcCUqKwA/2r03grRD2GJy966kdOiVQoDWrNayxYBTv3EHGiqN8jWfMsPHUxAT+oMv4K5iYyVizsgD5cHn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4Mdlo+YsTylMPd6bIVtft9uRuB54L7RG5tu0gOOcTjKry6WPZ
	uLF6KDxS5NHbPTlu4BJWqnF8opsJNCuPqRj5EfSkPAM37ZGoc9rSfzISyGuumTtjx3qvlrrslsV
	UHUyNbEkrT0n2u+lJLlb5O/x2mnC1edulEPyP70+5Q+fIdtULaDk7KtgrjQZPJXrP
X-Gm-Gg: ASbGncsiQ7VFQdlC5zIfmGlhBYaf6AiDbM88inf42mvl2UZyIPIW0BvWWDUpT/LtwcQ
	Z2LPZdC26KKMTT53E/yrYt2msr04J7LHQI2VjVMyPYQt5qVrF7P/RuJ6J3OqZtft0ykGUWKRK03
	rTKSb9bOgtFmVQH4fGfhrmSdubMr40sWvaaFtxDS28REmdeF0LrloRr8xOqzrQEEJ5+PL70bk3d
	S2L0M6hfaAheCVP8mGXh/CHmGnhZ/IdJZ6H3vMWyxvsnGVP2SJD0xJXcqLfFpabRN1cc19lGFoC
	yfpA3mVvCVLHVENWW8MLdBNdNwPBc8TY4KbiZ4+pMLf5FsmxszBfXf2kaEgUndU73SsUvhs6TKy
	1AMPCESgotvdKwJ8pfv+s1mA/6OBHameMtzV9hxBC0Vm2ghgIKgJ8lLf2uPW6jRZ6M3s=
X-Received: by 2002:ac8:7d50:0:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4ee313fa866mr24770381cf.3.1763469207012;
        Tue, 18 Nov 2025 04:33:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFB8OaN3tmFzcOE29+YjSKwC8Jq3pDXXlW1BguEgp3kVHDiSSO5K52l1zjqF4g8J3kaErlFaQ==
X-Received: by 2002:ac8:7d50:0:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4ee313fa866mr24770151cf.3.1763469206515;
        Tue, 18 Nov 2025 04:33:26 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734ff75e4fsm1345957566b.12.2025.11.18.04.33.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 04:33:26 -0800 (PST)
Message-ID: <715ea6b0-a8d7-4ecf-b0c7-f4469c94b969@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 13:33:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] dt-bindings: panel: sw43408: adjust to reflect the
 DDIC and panel used
To: "Rob Herring (Arm)" <robh@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        dri-devel@lists.freedesktop.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Casey Connolly <casey.connolly@linaro.org>,
        linux-arm-msm@vger.kernel.org, phodina@protonmail.com,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        David Airlie <airlied@gmail.com>, linux-kernel@vger.kernel.org,
        Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>
References: <20251118-pixel-3-v3-0-317a2b400d8a@ixit.cz>
 <20251118-pixel-3-v3-2-317a2b400d8a@ixit.cz>
 <176346899005.2610273.2055455026150162691.robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <176346899005.2610273.2055455026150162691.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: McJLyIqOYC_ZHoxKoNT5P4TzpZjNq81B
X-Proofpoint-GUID: McJLyIqOYC_ZHoxKoNT5P4TzpZjNq81B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDEwMCBTYWx0ZWRfXwOVonks4CS/w
 7PYfh5hn59tUqH39hXB9Yccwwx5krPJ1TzuVON3Wh8wABj5KDIKK9SyO07CcnY45XIPAWgLNBQN
 /rU+49ZuJSMhhHclehFNTTqMdLTwXJe6Edt7JixzS1kEkljtrGRHdfIF6z5zBXFTcjP+HWiW4DU
 S9jg+d5JaJhk1t7TjX1sqwH8on3RQpDt+sUfSbz7h0J8iqxMIHBMeeiN/7kG98567AuJsZiZOHB
 UDXyY3PcxuXIYy0vax/stezvARDMa5rDEgCatrxcSG6jmtOQwumynAz+ntKVgzeQIfGrs9OO4vK
 hEbre8ab/YgxHciNexaQTyWiAcPc20dz1L5fKKCENBbm+MOVsMNyaBvJFw0KEKgQCi3GCNWaOz1
 8Lw5/saDvEY57NGeytsnF9e5Z4rPVQ==
X-Authority-Analysis: v=2.4 cv=N/Yk1m9B c=1 sm=1 tr=0 ts=691c6797 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=SdGosrV6Qt3YffhYJa8A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180100

On 11/18/25 1:29 PM, Rob Herring (Arm) wrote:
> 
> On Tue, 18 Nov 2025 12:30:37 +0100, David Heidelberg wrote:
>> Add compatible for used LG panel.
>> SW43408 is not panel, but DDIC. The panel itself is the
>> LG LH546WF1-ED01, so introduce combined compatible for it.
>>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>>  .../devicetree/bindings/display/panel/lg,sw43408.yaml         | 11 ++++++++---
>>  1 file changed, 8 insertions(+), 3 deletions(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/panel/lg,sw43408.example.dtb: panel@0 (lg,sw43408): compatible:0: 'lg,sw43408' is not one of ['lg,sw43408-lh546wf1-ed01']
> 	from schema $id: http://devicetree.org/schemas/display/panel/lg,sw43408.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/panel/lg,sw43408.example.dtb: panel@0 (lg,sw43408): compatible: ['lg,sw43408'] is too short

You got this error because you didn't fix the example DT (which would be
validated with `make dt_binding_check`

Konrad

