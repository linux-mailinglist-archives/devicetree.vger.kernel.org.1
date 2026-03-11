Return-Path: <devicetree+bounces-274122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHpwA9RwsWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:40:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B56264B35
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:40:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9EDC30C189B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CDF1326D75;
	Wed, 11 Mar 2026 13:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GMZTCGQl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XqfTJOnQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA073112B2
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773236177; cv=none; b=RHfHdzV4yMHOGjQbzseXRBMM1IvjbyEkUnPhScekN4HL9ikpAH0JAT1xjVSHuvqjIGl755BXhhyn6aAE1nnxCdUqLzVVeWk5Cn61d5KnLpLiJSxZ2gpqg0xfru0hjpEts6G9gKwPovgsoJxw6O8g+MRgAQ6HVvbww8wSZ7PC5RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773236177; c=relaxed/simple;
	bh=rH5ts24BQ/UhBGGhX49B8Xlk4TgPkmgCrBdXZkBKpwg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DiMGnHIRRnBlLtUVJaO7Picw+Igc8i4WphIa/gb8M1/+WBk2XYW3dngE+JVppGEJ7e3/eOUcAmEuMC/fZdvAjzCFJkQGRvLPnFOULR0fYLlKHVoFfC7jt0U7ucFcvQTQeO/XU/0zGzES0DjnMlLewqcPT4/HVvC0Gl5i+Y4z/08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GMZTCGQl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XqfTJOnQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BA34wK2038138
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:36:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ykOfdb/L2I81AJssik4ZwdY6lbmVgNW0kf57btl/s/M=; b=GMZTCGQlBkvsgqCo
	o8yeUOIFiW8eKDJKssSiH1woKTKYhkMcY0veLW0sR97oqKDNcNEmkLzPoftvIWrT
	/RV64yTGYi086ah8Euwh0Z2D3Rf6ekgRzhutp9DKXVDI5c/HtZS9tMkDjcJrVFgF
	d7B1pRdJZo0tSW0U2YkSkB6RBNM0cYx+93/rWPgWatZaKzXIKNJFsk0qosurYJM1
	h9L+mzSKTRDqrUjttp8I6+tPnUJE9twFK3Z0ujvMiUs5TKTofImvsKphDfNxCYJp
	LC1agcaBGHKvMvYdtH57oq/ITqLbMtOowRlAS0s6fwMhgSiMkU2byjNKP7+/0cY2
	zbadJQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu6a5gqr1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:36:14 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-899fbe67875so63389816d6.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773236174; x=1773840974; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ykOfdb/L2I81AJssik4ZwdY6lbmVgNW0kf57btl/s/M=;
        b=XqfTJOnQ8vg9NsAUBCId3v/sxBVa+Gtegkks+FvVJreHgqTmYOuiUHGAuTNBh8bLra
         otzyXt1sCxiEN1/E9j6qTPptEOxg/NqMEzgSYedM6Axn8WI1thxt9fqSJ/kHXEJZGhg3
         2H7F8hGc7qDOFYF+DM4Fn00HRDKh94iWTERmCoXPA2l2V2RSnuDV96s3+BjW+ev1T37y
         IBrwIubhcFUROfkKdvXWLOb71DkVPOWdY4Oyb2w09aUuP3q1ZqqisUjXaXj53ohDbV84
         Q0ulxkKFXVpIzOdJM0T5XwBXcB1qK4j4fA7euF87e6QwWCGc+kmO/rNC9AYBbncnFASb
         GFcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773236174; x=1773840974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ykOfdb/L2I81AJssik4ZwdY6lbmVgNW0kf57btl/s/M=;
        b=DQNTh/nI2f0wO3Iyb4xHBNNX2jbA5XzVW5bpyw8riU9DRojGW8pJGWkFrVUfKKkEGZ
         sCNHhgibm84mt+wAhVtfgNiXBbIp24jg9ktaUacji4Xi9+vYWQHpHGGGBL8C7mJZVVR+
         wO94XCRD5ot4lNE9modKslwzs5FKy5C8+jPgE5cdrhLo8ze3rLbfEZnEnuHxg2bihxr1
         7Idj8XBzG8Vhcu0TFYyP8giOWju1u4sA4B2ht+LEj5OkyMGkLdYAVRCuepzeiJNSyH6h
         jhNPkZTuit4MFg5gHYhjcdKV16P0WQ7Rj6EcrBZj25sStzZupOYuL4NpSvl1VFbTJrb1
         ccYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuqkNq7stJp1gQV78S4pVpDyxgsmWPA3SA7Vnri732zzfLmgpUYlodfMofMI7o86g6QJgmtRCz6PdO@vger.kernel.org
X-Gm-Message-State: AOJu0YxwE3jI8ZayiUKXEXxilfMShMNP1TYVpRDhaWcMhOCUeVvfDOAD
	Tj1oVq1TfoiVHseQ7vVIgdU0eh1+2EZqSM6ccRMJGIcgjtYyDRLcgAk5He+muyG1aDj07OvNBEZ
	s7vjkMyCeY5ak9xkrFFr/3O8TNBLzMIIseGMyE5hSbttcVAFuxlQwiRYahHD/eTW5
X-Gm-Gg: ATEYQzzFjPeFPRNYnujfRImOrYjqtZ+g/p8nUrEiSZhm0ELSu1dJPDPF+oApXzA2LG7
	Y/pvNmXIRNjjNf+YdwP7nsmq6t6KgZWYmeKkOnACdPAZl7VpZl3BaPsbdK/hnKUqcLTRvtsF1bz
	jfEyOo4i1iviUt7rs4d3btjo7lZ05mXDsl1WoI592qUxEARYoc4bjVbLTlMWYYa8eowuYp3y4v6
	ySlBTAUYwODxkAVUF4aEh7mqZ/Os4CEpO6zvAMl94qC5TGXs+AU0MJDrXFeXM6ULyNDcjh6yGNG
	F5Gica3NhiSeJY+1hnYthxouVDjvAV6rQxG0GzxltKDdLpo39qEsTS0GKVXumlY305dRV8Y4R+y
	//6QVwmcXQS6/r6WBdsZEHA/R7OSOW2a2keKpDbOCyIWO3QgN2F22U8ef3ss2ABGZuegPMzAKDy
	EJuhw=
X-Received: by 2002:a05:620a:28ca:b0:8cd:9446:cee9 with SMTP id af79cd13be357-8cda1a7af37mr220996285a.10.1773236173956;
        Wed, 11 Mar 2026 06:36:13 -0700 (PDT)
X-Received: by 2002:a05:620a:28ca:b0:8cd:9446:cee9 with SMTP id af79cd13be357-8cda1a7af37mr220993085a.10.1773236173453;
        Wed, 11 Mar 2026 06:36:13 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972de80974sm55622766b.24.2026.03.11.06.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:36:12 -0700 (PDT)
Message-ID: <17648d10-386c-4d8b-a135-f3358a677ef8@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:36:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 12/13] i2c: qcom-geni: Store of_device_id data in
 driver private struct
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com, jyothi.seerapu@oss.qualcomm.com,
        chiluka.harish@oss.qualcomm.com
References: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
 <20260227061544.1785978-13-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260227061544.1785978-13-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: I9lWKWGONAqXBAK2Y_D4X98XgX4Iu7WX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExNCBTYWx0ZWRfX2JRzTSVFrEl7
 VAi2EQnc8QtSza6GbLSn5jy4JnMi77Ks2xBlolW9gJ3HtXwru2bdthdKqI6B9qIFfkzQ/uGmPVc
 9KJWJGN0Y9Fp+PaIxruPlWF9b4S8fqbjBRSltlL7EBkCkArBpl0CEQ4IX5iT23nCz3qtYI74Xmp
 d2GqpWWJwq2fdwppCTRSS2wRUD1+WIItibdIebFqpmURoSImpqLCpx2TTVN4O7oCQ2sDr/eXmds
 2tIjsYKfAHbGM69cMGOyneoVGhJFeF0JsfQzBV8/L91n7QGIAQomQkWbvwYj8T/o7047apXwZxM
 O+QMauNtQ1GgDijADj1V0n2oxttMqJMGvWnTFo9jGUZAJJCB6epvKabFaq7x4uH0dfM056ZlAVS
 y2oGKMBUF8hUr/yPB6Gq+GZxh+v0fSTJCPAHPqTTSKTkIxL7N2ptTThxNJSlcgPTUKN2yYEHAxU
 MjlzeJogfPPhmPJTMqQ==
X-Proofpoint-ORIG-GUID: I9lWKWGONAqXBAK2Y_D4X98XgX4Iu7WX
X-Authority-Analysis: v=2.4 cv=TtLrRTXh c=1 sm=1 tr=0 ts=69b16fce cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=LGq9mxx2219gQT2QHCcA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=zZCYzV9kfG8A:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110114
X-Rspamd-Queue-Id: 98B56264B35
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-274122-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 2/27/26 7:15 AM, Praveen Talari wrote:
> To avoid repeatedly fetching and checking platform data across various
> functions, store the struct of_device_id data directly in the i2c
> private structure. This change enhances code maintainability and reduces
> redundancy.
> 
> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

