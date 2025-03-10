Return-Path: <devicetree+bounces-156343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA92A5AE36
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 00:37:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 190A23A95FA
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 23:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E84CA22172A;
	Mon, 10 Mar 2025 23:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dDYofdhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E63F221730
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 23:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741649870; cv=none; b=p5rU6uLaHw6Hda0VvmqvzkK8M+y7OZ6vCFmmx7VAjHBwZuFewFzsObu19WiEryW1Jfxm5ZublwbaFk8eGTcu8M4lWWaZu0gvtpcYfo4H0GF3RGdPY6ie4eV6e9/Ieyl0ZoeBHWn+xoPo2BxsRtyWaWF9Xwz3LXKdYf+Doaet5yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741649870; c=relaxed/simple;
	bh=+J/gIo4jHxazEkQlxKxKqAY1qd9upi8y4fJP2X2CZWU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZurWp9SRLBjW43YwyReerQ/UX+/FBEBBXGOUlbO8S6fU/HiZbxplkyCl95pZ9DC1Lc8dGiPKYScoA4v0GalTObqaVWTjkz+2kphCOBh0YwSY3dykiz8nwmYg/HAfgnvTIvLlhCjP1wVBFxK07vK8Nuuf1wtZcUUYIrb7d+4wx6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dDYofdhW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52AJaOcV015437
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 23:37:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B8TFjGbBf7rY2t4VlMRWb4Z8bam2nqJEippM+OCcgS8=; b=dDYofdhWdXPuo8Gk
	X8eUaoBELPf5r2lDlX2BT9sMdcIDGSW5uKgszDKROEAaiRN32B5gNT5r4XoSNwu0
	CiAXxrBVUk+OwA+0x0mvqy22He+HP+pilje1+focREWPQCX7HoSvVhal/Cq0SGno
	BkPzQKpnwUFPox+PD9jiuJKqfklESge/hfrewZ499QFGDPMzbcBjNbxtCJpkTzSG
	xau+/sWaYf6NZqx0OWLR+5co1SNQQQs2Lo32gAlrpfs3D0ipl6DW7+A8ZoHMEhLY
	JWBMx0XndFszNzskJuP18uir5cSqTEIwgNvr/onXRlcuwy+inZX13S5PzPA29RLY
	rWu26w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f0pxdau-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 23:37:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c39555fafaso134992885a.2
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 16:37:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741649867; x=1742254667;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B8TFjGbBf7rY2t4VlMRWb4Z8bam2nqJEippM+OCcgS8=;
        b=eLPDVd/p5ekNy1ULiYlzgrWEdgVbuuxKLXhgwL/+qVPIs8UuQhEuLGtWNh4I4La/2L
         /o3fgeQwqIegVV+oUTLOX/ij9hRB/Fcvdb5Lp2y7awslSthHhZEklzjmRm+X5C5cJkbh
         nGQz20Kk/8HXbBaRJvGEblOwtxouHNTM2ovFIm3oR2od1JAtE+hmjsQjtASyb6/sifIr
         CvYs8U8y5P7wrojqPkaMe4TOv37OqFVLjojKRYNy+6Wp6+4qjI9MFJz1BVhs9jUbQb2G
         x4eJsF1am2k3rbiCevPyOxYdJP8QXed7LHPbZG6tKZpOCDtoTi7Q1BuFRD/Fx0W+SmyB
         tpIg==
X-Forwarded-Encrypted: i=1; AJvYcCXOl1m0XAGf/vauWeEMrdFqBvgv3kUfIZ9+F7pcwJ52EqPiLhB5tXgy6X4I0T50HNS6PU5NFEWXHM/F@vger.kernel.org
X-Gm-Message-State: AOJu0YyFLEwMr8Kmf5gcG/B8FGrypJGOHxZBILdo5HtJS41V8Kacyj4H
	vnzd/PdbdcLodh9AsO2wQKkyh78hdNBRIraCUHk/Edcqm2zMlS0N4RXURZXaZn9CAmmqNcKOg7Q
	b0bFCeCG0HhlGDAjYWMpg+SCCAcUMD9FXxEyAJqEBhGiOilC4Q3Zy5MiuArwF
X-Gm-Gg: ASbGncu75VliV6f8cFcxqZP+AVyrg7UOu+BEaU3ONXki6u0mSiZPiEgrpXWHizkkR6B
	PrjTvkfQCz/tkWvupWN2rXZq9ua3d6f5rJzgk/J05eNJd8hACVFe/O8sBeHIOBfJ7P+qpRO1PUB
	YbztYKE/gSV1+DTx5qvzITb9BvDFvu38yVWL3rzDm0/70gBW5/5Qo/Z+Ag7syQjISM+QDb7eFau
	rCkyW8TJJk+Wb5uH+qD7xfr/Npyu0uT69+mEdYsnJ/HtvTTVV5pd+06abz4I3jwlN671Asexmve
	XV3M5SOkPz4MjrAWIR958VokOeNQn8sLSdKh3pFARLx4nXxpCIM8dFiMX4hbU9/wI3JcpA==
X-Received: by 2002:a05:620a:2603:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7c53e1d8eacmr535687285a.11.1741649867245;
        Mon, 10 Mar 2025 16:37:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4Mp5wCFYiwFx0JJwA59DroSlD0bMK7BsJYztTlXkZgV5YDKGVGzmedYfg/iXl/C3zcTEbzg==
X-Received: by 2002:a05:620a:2603:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7c53e1d8eacmr535685185a.11.1741649866890;
        Mon, 10 Mar 2025 16:37:46 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c766a194sm7397206a12.59.2025.03.10.16.37.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 16:37:45 -0700 (PDT)
Message-ID: <455b685e-0ccc-4c57-a60f-39ff9cd280ca@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 00:37:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sm6125: Initial support for
 xiaomi-ginkgo
To: Gabriel Gonzales <semfault@disroot.org>, konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        gpiccoli@igalia.com, kees@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, tony.luck@intel.com
References: <0bcdb8f9-9a3b-4d6b-bf7e-55a22ffc5df9@oss.qualcomm.com>
 <69f26012-e71b-438f-ac58-e0a3faaf4d43@disroot.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <69f26012-e71b-438f-ac58-e0a3faaf4d43@disroot.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: PSV0dRsX6AEj6xsun9E4u60el-xXm4vY
X-Authority-Analysis: v=2.4 cv=KK2gDEFo c=1 sm=1 tr=0 ts=67cf77cc cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=FfWvQauag8hAH5SirX8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: PSV0dRsX6AEj6xsun9E4u60el-xXm4vY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_08,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=947
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100179

On 3/11/25 12:28 AM, Gabriel Gonzales wrote:
> On 3/8/25 23:11, Konrad Dybcio wrote:
> 
>> > +&hsusb_phy1 {
>> > +    vdd-supply = <&vreg_l7a>;
>> > +    vdda-pll-supply = <&vreg_l10a>;
>> > +    vdda-phy-dpdm-supply = <&vreg_l15a>;
>>> +    status = "okay";
>> Please add a before 'status', file-wide
> 
> 'a-status'?

A newline.. the brain didn't synchronize with the hands

> 
> [...]
> 
>> > +&tlmm {
>> > +    gpio-reserved-ranges = <22 2>, <28 6>;
> 
>> Would you happen to know what's on the other end of these?
> 
> Unfortunately, no.

Usually it's some secure i2c connection and pins for the SPI host
that the fingerprint reader sits on

Konrad

