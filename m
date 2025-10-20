Return-Path: <devicetree+bounces-228650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EE5BEFC23
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 09:57:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9AC614EE3D3
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 07:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F6882E542C;
	Mon, 20 Oct 2025 07:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K1ZNNLQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068E02E3360
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760947041; cv=none; b=Ea92lcv5aNEfBIJjb47BU/0pqbAibTJsxSxf9ijlxCcBdx3JvJdRzuQLKGeGJb1I0vEqV9kQkyechqi6Wi9R3KMw7E1t0KHy1w8RrZAXzEGNxu6clVGySREt2Yu0VhciBK+YeBZ+8/UyOqDyepbEaJeN1DqhpyMZ6CiHRa8CvqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760947041; c=relaxed/simple;
	bh=gJnVeTLhVTmho589boVCAJSxWIEgmPLZUR5r3i0UnO4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VAqGUnnUMwz39B0r9EPTyfe//U8c0oABtD9loSnzhqVoxGYcA8f4K6JSBN9EJ3YGtP0ipRTrw9I5g13DWs1c/LReyg3p06MsfztKwgJvLcOaFHMYAUccId853mXHyc6vh8gba+T2jyp6OYiTpaZzQNYvEWVGaiYXjG3zrwA5yfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K1ZNNLQ6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JFvPWg015676
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:57:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1ic5bNXxreVSIVO1Go5QvhyrCQOLU1BzWAxz5v8DrSQ=; b=K1ZNNLQ6LVjaczUZ
	hs26L1lDBuSAPCx4tS9XllytcsdrALVP+Rhehfantj4NkrUOBxN7D5LFY4xAD4vB
	fzXJBiKbhBt9fgpx4HcTgBhC4mVZCEhzjJ4ClCmO32M4RoBkfJjIQcuPQIEzn+/M
	z31PlbMDLbhe3qeRnxFYhMrz6Rtp3C3AxBMGPqGLb5xY45g6ZzVsbN0bHYMj1Ggd
	eAiY7tye26dhNSGIBS52flSj0YJBnabov0R5Mfq130uw8rM6gqh/SblhAzS5VyFz
	AGBp7q8va2IeLp1+hO69MQtMQU271el/UIye/ZKdvPhRYp5kfzp0oGEocYfHgIXq
	U4Y0tw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v0kfc9gv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:57:19 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-886eaf88e01so184273285a.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 00:57:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760947038; x=1761551838;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1ic5bNXxreVSIVO1Go5QvhyrCQOLU1BzWAxz5v8DrSQ=;
        b=ndDGeJSeROale1TDRScKl8wPn7Gwwjj9s6DrIKKIY6T3kMWcdCepUaKoBcoAEQghGo
         h2k/sNN6m4Fi2nPHmaSZGvdR1WlbLIWcJI0OGLcaGyNREW6hg2MMCZJGEblJWNqCAoRw
         Zhmu41RXysFVQOg2h8xSdScz+l4+NPb6fdB1TdJRgurBWBMUpXbBJG/eR81FOZg8mDSM
         xdZ3lu9B6CJwg2p4d3VGoZhK3ONAV7vebNrldYavDQ0RbyPy0tMylPL1pyLpj5LrN1el
         YQBViIXjYbX1KjZ3Dwe2HdFOwiFfzG/7aYvhauq1N4y4ZPPAUMmRGqcziLyZH9IexEec
         OXsw==
X-Forwarded-Encrypted: i=1; AJvYcCXVwE6OH5stBNULhoKnp2okeUwT1fAoS1yQYBGze2fMaCcGjTo/b5OL3prvsm8WVGs2LpXd+abNoot5@vger.kernel.org
X-Gm-Message-State: AOJu0Yys5t7QWUd27abMsndGqyPCsOVz8qH5U/ywne5ZjViCTvRJbG0U
	x7H7AlFDvvO5WsUd5LJ+BuG7K9zZgMdD9Ds8z/+xM97U3oRmR5fT4cZiKT8jV4Ea+iL1Satwp96
	LIuixN1iVO6e0/VVULxn6TGRFCTDQCrFJI66LdlZPws145H9UIkZabnK3KbczM4gU
X-Gm-Gg: ASbGncudujsBSPhmT9MKn9fmHg+45azC3ya7Snt49+wPPfuvXvmEtrbJozvvAtCH1fS
	GIoHfkmJRrWE7wKOl2cG0flPGYyahSqftMyNSAJ5WP4wBF6lmJHVRT4irDzDa8pCNaMGiZ4YEmb
	hmH9RweL8CMW+dp4Rcig3kzH13nn5qg5tc+g19l8wLdLG9xr3127DofcQcRaal1wXRkxyjaCvXc
	wyWgcprreaCa96XXGLntLNQH5i00vR8Bh6AZpxBXicSzaLKtMyCOtaXaGidmX1JodrVM9zFwa+P
	o5FLjVPhCR4ZbG2vz8CM6583MyU47tewK+bDHE/lbfoUJ50FCNQUPcL2USKiGMBk7PTeusAfXGd
	arRNHTjtEk9kDXG/WBQaphsOTeuEV/XadzbeQnldORKVOHHM10o4fUY0M
X-Received: by 2002:ac8:7f45:0:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4e89d362902mr105943521cf.9.1760947037891;
        Mon, 20 Oct 2025 00:57:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBnWJcnNlKu9/v8lp9BtHCdJ5pN1JcnYbdJjV94hLdxAt6+Sr2jW+D0brGc3dRHU+JONj8xg==
X-Received: by 2002:ac8:7f45:0:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4e89d362902mr105943331cf.9.1760947037470;
        Mon, 20 Oct 2025 00:57:17 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c4949998csm5964950a12.38.2025.10.20.00.57.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 00:57:16 -0700 (PDT)
Message-ID: <e3547ed7-9fc6-4521-a9c8-6318dcd76324@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 09:57:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcs615-ride: Enable Adreno 612 GPU
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
 <20251017-qcs615-spin-2-v1-6-0baa44f80905@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251017-qcs615-spin-2-v1-6-0baa44f80905@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E6LAZKdl c=1 sm=1 tr=0 ts=68f5eb5f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=iJWliPolnP7GhHh1kxwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: eafdRSGaFsiBNzQ6LBgWkIMo0fh2LU0A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMiBTYWx0ZWRfXwq8j6gArAdIk
 QMm7hfUYUnE2rDoD1kSOhcz8tHZ7Pt9cOQITKjghiMJrMRw5wrtdITMNLFAq3s46SC2GDYSXeEQ
 jfkp1LCz5IJ4Q6Q07xWv7KEG6cJ2TdfFa+q8ozterpz/wwS0wAcze54Vxen+zYlY1tnCSUz770/
 Soq72H8UvVYRrWsXr9Woov5f3kET4ukmBDt6I5sbqRjvW/zaMmOlY2UXB7N/kTeVqGzOoxeBHNt
 812DOqtmlEzvR4GHNfHiyDdzGIp9Q0/C9LXC9dZqfiMnBQzhM7OMrdLzA3o1qeGDQZomnSImhur
 zbqXzHpzqX/EdB0A+ZbrfoTwiGcHJwhlbdNVYrIAw84REGRHDNjSrUR+WAADKNP/4MocMn42las
 TpzWsans7hikqQp+3aZsvrZhnB1Oxg==
X-Proofpoint-GUID: eafdRSGaFsiBNzQ6LBgWkIMo0fh2LU0A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 phishscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180002

On 10/17/25 7:08 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Enable GPU for qcs615-ride platform and provide path for zap
> shader.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

