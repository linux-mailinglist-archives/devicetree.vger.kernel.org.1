Return-Path: <devicetree+bounces-134902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 486F19FEE5B
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:32:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 746293A2B04
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD1E18DF73;
	Tue, 31 Dec 2024 09:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ONY1nNCQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E2918B482
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 09:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735637553; cv=none; b=kyI0kb9/HNYrAcqXcAjlrTsezbFx6MozYHL0yLSimLwLC/4Qy7qw8G2c2ts45jT2XWODcSsv64Aj9elkGgyW11q5ftDFnXWhWKjIEfHg/RASrWTJRew/mYczORClisMrai48+tiGTPHhvZy0N51GVDM7AAaCgRvExXahcSm14Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735637553; c=relaxed/simple;
	bh=1bkF8mUwm0oFvcCGGdTq6QZEde9GJTBFLRYLax6Bqd4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=aQcF0mc5JUFyls5BsXUxkuRNCv55v85PiCQ5mrRMxcnovrW8o0D7tw1+pbSa7lgKVCG8hHKz+2LEGTfTf4h8L4q9l8vPF6lz30OGNweBEA1LSsg3jPEpU6KoZjFUyiq+evoSEPWxnUZq7XDIaYfG1HeDcD3gWqFBkZrIZv0CXEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ONY1nNCQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BV32gmP023993
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 09:32:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qkiPZZbbFu+QBO+pq7kC5P+upRO+kAel6emNBQx3EQM=; b=ONY1nNCQOoPVwaxu
	/+fIRmS+Xw+QNHX2Ji5bOLkyM1sOwdmLUY0X0rM8CEP3yduXv4QJrqDn2bpYzjL0
	jrsH0zKsmlh5cKBbF2nZeVYaQ4mhMinUT41tL8o+ibPXWO67CLDxqaJ2zd+EbtSj
	lj9oHT2TQL0b4jhqLd0VqlR042T4+t7uVeFfguMCZWdYc/b0kcOyTLhM3l6OBTIz
	SIxyeVym9wEpK8LFDUSFIIuJn15IB8YtHXdPnw90hcvF44JcEjYeZf/OJcCUo65E
	osy8H7IDUG9xR1uTGRZ/fkQdD4mPYHi7Pq2ZpGnC3ebT+rmi/OBk2gjCclB/wzJW
	qO7ivQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43v8c3gtf7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 09:32:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467a437e5feso25703711cf.0
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 01:32:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735637550; x=1736242350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qkiPZZbbFu+QBO+pq7kC5P+upRO+kAel6emNBQx3EQM=;
        b=Yro3XiRYJMLcI6ONfWb2D7CDSQg+KyBuFhZu+Ryym/noTv7awWpZ/twittVvzPBqMk
         YBQLUfJy2lxDJJTohcl0lrSW3C0Iv321ViIKh2Ose4IFxQOQISUd2ervT3OzVpaV7HCh
         D7hUM9f72EbGX9iIiBxDvMtBMYs6+4LsNH1j7Rz4zXEaXs9yC9URVkI/Vx0vgrDKhOxJ
         mzDoYXY3OSj6YqlfEL/OOVCCLgAHop8I017Qdq5evBpwfVuhPMeYqx571is/allyOmlC
         jVQrrqrA2URMbfqWgicQh+7we94fQpWrQFoko6qFBMsF04zr/A2+/HlmjPn/QfLPIsLM
         jErQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfRxP7ADx5NfQRREA/LsjGM8DU0NYiLqrTgyUeSmhFL+XgDqPfHzlUdQEAMpkf1b8aFCz6lfpHSKQH@vger.kernel.org
X-Gm-Message-State: AOJu0YxW03z8CIba65HICmcdp6e8nqNakRbdGBH3djGxLA4zuJU35FZp
	88xJNuhblNH8z9l0Lvfuf1zL2pTruDx5Rr+RLY0WtaMqClv3DOGQK+9ug8R3odo9hgaR73akoOH
	JtEHM/imK/yOzoyGeYQ/MZIeX5XHRXHYF/W766O12XVx1nAWqp3wMj893BWai
X-Gm-Gg: ASbGncvh+iy/WvHWodz46XYCUHOoRrMvb/bwpz233osOV3IBbdstZkd8jnhcQe6ow9D
	ktUNECkudJ6vr2Dp4y3xi1d89ugkfk/BJv47EfCZuyiv2OXYMwN3FUD2E4TfCtbIPgEvIu+mpNR
	de4Q5P1NNhhbocuhLTauiA12vtBjCqCqcTJVQUcTgGCsbJ5jZgtjKe/NxLALuAkUr4r4vQzBJBU
	MjxZ7C4gGwoflnxg48lBxvJLJ57dwjc+IQg9ULbwXF/uitEIpBcqTwg+RuaCssESykTpNOsDStn
	a8EBW+GDXNog0eMaDHm8lXaoZq+U24oDNxc=
X-Received: by 2002:ac8:5e47:0:b0:467:6486:78bb with SMTP id d75a77b69052e-46a4a8e151emr227593591cf.5.1735637549811;
        Tue, 31 Dec 2024 01:32:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4pufUgtQGgzt14adazwD6t9KP+MVwQhr3lllCfTUzZL9CdnvIa1iQ6PTju+i8kjlpvtPzsQ==
X-Received: by 2002:ac8:5e47:0:b0:467:6486:78bb with SMTP id d75a77b69052e-46a4a8e151emr227593411cf.5.1735637549367;
        Tue, 31 Dec 2024 01:32:29 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aae9c3eb987sm1322079566b.110.2024.12.31.01.32.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Dec 2024 01:32:28 -0800 (PST)
Message-ID: <3ad8c99a-d722-458e-8783-951018e2a7ba@oss.qualcomm.com>
Date: Tue, 31 Dec 2024 10:32:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/2] dt-bindings: mailbox: Document qcom,tmel-qmp
To: Sricharan R <quic_srichara@quicinc.com>, jassisinghbrar@gmail.com,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, manivannan.sadhasivam@linaro.org,
        dmitry.baryshkov@linaro.org
References: <20241231054900.2144961-1-quic_srichara@quicinc.com>
 <20241231054900.2144961-2-quic_srichara@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241231054900.2144961-2-quic_srichara@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: tqN30AQHdD1fcshO7V2MFDgr6ts8Ck3X
X-Proofpoint-ORIG-GUID: tqN30AQHdD1fcshO7V2MFDgr6ts8Ck3X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 adultscore=0 impostorscore=0
 mlxlogscore=807 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412310080

On 31.12.2024 6:48 AM, Sricharan R wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> TMEL SS provides different kinds of services like secureboot, remote image

Could you expand the TMEL acronym?

Konrad

