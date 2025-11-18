Return-Path: <devicetree+bounces-239805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4F9C69759
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:47:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 94E7C2AC28
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E41CD239E7D;
	Tue, 18 Nov 2025 12:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U6t1mYm2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hmWNjGth"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDDF238C08
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763470070; cv=none; b=eFPPM7DnJpCR0KcdCxqsi/GAm94jkRwD9nWdpTJ+JkXC4OCV9MHF8vkhcgBUoyztwsuyyg/m97s8Vpvw03ZoSboggmkq/bBhZFHxWcFNj70uc8umj/oitkQ/qpaTD7iapIEzS9JYlUv0LMcSXM23CRnW1bgo+Hv62f99+o2CpZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763470070; c=relaxed/simple;
	bh=rxzzdyfw7bng541ww+e1ugj2yGFHGxAs0me60erg+I8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qUGSs9v6NPN7n1uDzJppuO2pjp1XcX23nNcKeBTIfsnsm1hNt7neHJ8p2XcjVg5aomxwo/bWHNkzETOi055vLK+pd+pB+fV2MDmbSFzHlP1uWUr3xOz7m3HqExpQ1naSJhTtOd0VSlik41fOtXqHR+HQIrPaEjMOv10sNaJEoAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U6t1mYm2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hmWNjGth; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8l9gv2755434
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:47:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n7gavh6uoKBBotSDIpoJHKwQ1nIzxe+w2VKeS0F3xlI=; b=U6t1mYm27jWeRUEn
	fZml+NidCpzvzlCz87uR+m+DQ5W1w1RP4TTiSsnge2ytaY17kNoNpiEgQE/2mYMH
	b/nJj3U3IZm8Rj229fK1lvIVry6Mz6E8Nwfkp0PXVPuTAdRHH3CUgNi1yMnSrPzk
	raCCPsF5LlE5p7CSx/DAbwxjJoHEIYoiMqFJgpkMzL6IOiRSwUpSgjxkBPalCV4S
	RUzyvaFdRRUG/sfmYVrrt8aG4k2esovaPRzO0qk5sv1TFndcdIK+3Z0TeQ38sH5L
	kSyIrBrGhEclsgs9xmiCeMuYRS3pPBWJSPewGqxMAYbHlwufigBzDBklpgYSDtC/
	FOe7OA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agnkj0nvj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:47:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edaa289e0dso26449021cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763470066; x=1764074866; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n7gavh6uoKBBotSDIpoJHKwQ1nIzxe+w2VKeS0F3xlI=;
        b=hmWNjGthkKTmtlyXRnY1cOM/C5w8fQg7vDJ61XeJkbqWf1lCmdmCGMDEfoG+YQh+b9
         pCEiy+5XkZr6uYze2b7VSvJVbCBLabAfMdZHXgwR6G7UeYYsIeUKX1QX+w9l2rVe/Iwp
         0SZVxypoedbxcYV7YF/YoPzwJlGO6OR4zFAMDM30VxqcCequCnASyacqfksfeDqqqYO7
         sdH+TXRZ5hx4klomVYTCuH/noVFBASVcNMruKrMefuuScfSlbYkxOEnOs5qA+gI26ifb
         MP3L+u9ApCJXkmw7j6e1O8f+n5wY9W3eRLYrZjLhKj99O6/oQszii2/k1I9tLKodkHKF
         lk+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763470066; x=1764074866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n7gavh6uoKBBotSDIpoJHKwQ1nIzxe+w2VKeS0F3xlI=;
        b=Kl2A5FywEpEnkbGwUucqY3+DHLSYi3W5WY8I4pgaABp43NtQHpnmsZWgBohAuIWkZQ
         83IyUHOimOwMzSi7OdO/Kokjp+ld0Ad1ViMbFigL7sCYNKMWEIQPWYJD7G4MJ+Wao0FA
         xXWrB2aCHL+grNsjpSiK7vP3VPe9zTbhpKnwqjaWp8iDBg4TIOIOazHvvB+jkG3itRbp
         tILeU5OBZmcGTxKB++b8N1sAdM9Z/E2tW8j4BbSZn0+NRgPxqbD0EYeN4PsaVVEIeTvF
         4geP3dwfk5vVy9Rg/vBYMctI/GSpd9ZRvK8pfvwBrCMycWXggzEXSL7dSIHb5YvEZjX6
         rN5A==
X-Forwarded-Encrypted: i=1; AJvYcCVAHQzad+F0YvNzEGvzxwq/cylTciO5PqknYGg3q6+JJ8Fgm579PgC8Q2j2QBk02b5pKk6KYnQf2oL7@vger.kernel.org
X-Gm-Message-State: AOJu0YyORkTsQ4lKYSyNbGV8P01/ytTJeOkubMPxokOPxaGyShadKsWX
	1Dogtm25a+pNrGmHfpb3gkG/NDzj79tddOdjLg+Q4IHcRx5xnh8r3oApf2b/ZUNYOB1uXB/D6nN
	+uILqHz5eHx6QvPrfbWphgB7yznPFsQRs5GPRiT4MU4xrhJAbBqqU4Mu3y+Ffg1R5
X-Gm-Gg: ASbGncvYVsuA2Fp5wChgqKfCZxIkX3vcC5orS6Ulyaos3ITC2d41sG0eY/PtANU6mah
	ZXOIGACR7iy3bbEvJkE5Ew3/33I1W1FkovZs/SKUqZajs2qmrcZ025sScbDL/PbuTYcXjEHPCh+
	ne8NcFoeezkMBalbIJthnwPo/wm1wWfVZFV/eMsMr82T48g+BXEpQXu2KXqyUzHdTDsE76cYKBI
	saw7vor6r2CXRirAY5jAJKaASqghU070s3PVR3IAWUxQk/5rWGD+AXT3wvRBnYygN5sYBEdMBls
	0IpX2oY41VZ/8MhPPeYIEz3QUllot5ydkVvMj6FBu7DNyRG72cxjrXiPOgWL7/TGO/dte2dJRwS
	arm1FBKc4KvksH49XHzBBmUx3CZQAf/Lp1JiEH0STtIrHBwTaDi5mHpF9g5llqvjKJcE=
X-Received: by 2002:a05:620a:3725:b0:8a4:247e:b488 with SMTP id af79cd13be357-8b305fe428fmr218065785a.12.1763470066543;
        Tue, 18 Nov 2025 04:47:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFLp9H2IEu2J/VxIAOY2qtEwtXYkolfMCNLrJn8gjT7ZmNv7h3ik3BwJNapF++HDOz1omL3w==
X-Received: by 2002:a05:620a:3725:b0:8a4:247e:b488 with SMTP id af79cd13be357-8b305fe428fmr218063385a.12.1763470066102;
        Tue, 18 Nov 2025 04:47:46 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb91bsm1333517266b.70.2025.11.18.04.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 04:47:45 -0800 (PST)
Message-ID: <8f37d909-162f-4777-b105-e1f5737ed170@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 13:47:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/14] firmware: qcom_scm: Add SHM bridge handling for
 PAS when running without QHEE
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251113-kvm-rproc-v7-v7-0-df4910b7c20a@oss.qualcomm.com>
 <20251113-kvm-rproc-v7-v7-10-df4910b7c20a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251113-kvm-rproc-v7-v7-10-df4910b7c20a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IjlseiEOtdslgzOuQEFZRiqVlvjdRzbX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDEwMiBTYWx0ZWRfXyEyz1ZGtDH1v
 jVtweBj1E9D/z4cTlKuEFH+LAqTrZdI9uSPXGib1H861omnD18PfxYOxSPlziu+hqAEzEyuDVWj
 SONnKTUHCk4YkFwhUQibyw0GBOWaRQ/TNmUuTDg0kL6MH9UwwSYxdZPpkJMjyoolRdwj0PO5ewW
 Y9XWVmT7BwgWpVNpaIhbTSwpe/o86RBbt6TROyqEWXt3SURwsKuoY2DzRVqg4ylYrucqD6puc/7
 0YZaaj5fUjdKsYyoLbw3WnHLzTKyeIUNx6M2kpJvlX+ftfWW4YIu6dyB30eJKhA7/VHlBrLmhFb
 RikybuJhFHs2D1U7EetwlbfR+Jw3+OlTcSfZi/jjAnSVa3Rb3EK0uI0EFyvvO6eB3F2If0oKnsh
 ybt5cWgeaTMcMjV+iUnwfZ9zyO83KA==
X-Authority-Analysis: v=2.4 cv=cs+WUl4i c=1 sm=1 tr=0 ts=691c6af3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tQqT8VwP9WrLgrXSfAAA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: IjlseiEOtdslgzOuQEFZRiqVlvjdRzbX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180102

On 11/13/25 11:36 AM, Mukesh Ojha wrote:
> On SoCs running with a non-Gunyah-based hypervisor, Linux must take
> responsibility for creating the SHM bridge both for metadata (before
> calling qcom_scm_pas_init_image()) and for remoteproc memory (before
> calling qcom_scm_pas_auth_and_reset()). We have taken care the things
> required for qcom_scm_pas_auth_and_reset().
> 
> Lets put these awareness of above conditions into
> qcom_scm_pas_init_image() and qcom_scm_pas_metadata_release().
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

