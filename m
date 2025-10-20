Return-Path: <devicetree+bounces-228632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 84000BEFB03
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 09:36:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 432CE4E98D2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 07:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E42FB2DE6F3;
	Mon, 20 Oct 2025 07:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="drXT9rVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5292DCC04
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760945788; cv=none; b=Vhkek8ojbD3IMVPuGE5oFRpu+mAqZDkYT3cE+QWNtR9REeDQDdksqu9uFSirkWJEjLffJUnR84h2tba99fS0z4NAOH8YT5VTnI99GZJgatARBf9QalcPAbhH/EJjikwev3m7PDN6cX1YBF5Xw4NFAsXbFFdbG0XiOvm771vz8xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760945788; c=relaxed/simple;
	bh=Qy1G+EoRAXMHmUHIgMwmRFAQ0JRvR1cM9i4cWeDZdqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fHBt/ORopL4E+wwU3Hyk9yu8BfIzYaYT75RMtH9QwJsSrmjubBs8BGgUNKwvu8BkOE7f7MEdG5OuYDPSqG4/AFjg/OKsEGMROkh26UYJh4wuz91yH+gZZJdY6XfnkD6WMHIccwxriWidWgffEfJyb5wY0KlDCCq5bWi1kjw3QUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=drXT9rVh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JMaucZ015332
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:36:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N054C2w59vHr48/aMRyFcCjv0bDt+WkljDcX19Q73Nw=; b=drXT9rVhle0ylq11
	xwdFLr8UXRZII2v9blwBsUMCSbzPOjniZ5Szn0Gu3hgUwXPjw1WE1ZlK2Vgz0LJh
	T0GdJiPRVEuYF6MpliZ3Dy0ePaXIFtn3UJDHbxJAN5vF46SgqE9K1/gxnWJE7Upo
	qMtsYCO8Sw6x+vxSSgNW0u5QC3bMcc+h9qzmqt2C6UGfh6KXt8tSx4DejUABHXLq
	fSr4frdouj3b6keRCY99PwgHVb8h+T3hjqSLtY9Y7VbtjedgtqSPcmm/WeGyBszp
	Cpzrp7feKUjD6ClT+sqDv0viKHnHxfFrsRSEGFiTatbkvGmQC+0YZmGVspjkyMvi
	N0kiMw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v343uycd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:36:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-886eaf88e01so183700485a.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 00:36:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760945784; x=1761550584;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N054C2w59vHr48/aMRyFcCjv0bDt+WkljDcX19Q73Nw=;
        b=egHYrBHGTN3UX7BusKZRJxrF7MLJgrYWcRkEVUgbYmgQtiz95kPd2zfQR65Sht6G/D
         9ZD1om5Giupj5aXepcqW4YoEmN5SdyApXrmled4qLwV48Pb/YZxnY6LB1QzkonwEAtQ+
         pTRbTsrhMMR5+Ii0nF9WAAVw4iVGkXiL3AtspsbQMHXXgFpLiVxiXOYo02Iykm2SeY69
         dbh3ZGrQKvmK5UkQHfBs+S4xDrjKAb6WWTTZMCdw0kx+/kgnjvUW0dTykpF75YEpkIEe
         /nRrFzV7CGglxGviZe/cTWfGHl0mjmXU4ZvdSzGClkQiaS8NGpef9i1jCss9cjLCTGNV
         FykA==
X-Forwarded-Encrypted: i=1; AJvYcCUjMTgTGNIVv3UdL73d7HsLnW1F1IjfY7e7DA2HQni+QNLZ23kN0fjeWpSMmvEtAVxwu0kM42PjaSnZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxSBeQJquuAeBvsVV7kwcKLz0Ur1Dl0WPqL02mwVvylGZksoHkT
	BR69yTEMLnJb4Qtov+/vC5Gl/0lHGjtFJf9nJa9tLyx7Dk77OIW+CmK0mHjRKdRNdjKdsK+UGFa
	lbwKB3JuBxJ/1KAg45mUVdKWDKiBJ0vxEiHgHDHTCrXcku1rBVzaDhJ52YrmWm8Ey
X-Gm-Gg: ASbGncvIF0I0WMH1h34MuILJedvCCpmy1fGqQfaM605xZPAIml230tnFlRiaIxORRRn
	IJVqdYHrA8EXuzTOvKqs4mBEPny6ogJEG22qoZ2RqHzA/vYhEAg0QqrdfjOYy52lExyobm2lU5y
	5Yl3wAa9fOXEXXcvDfSOyFOPc1byfAqkPH4D+uhWv5lrTghbwUvYYs93O/xYgMVdMiqvKeeLyoM
	8nm3VcqRERJSZYrPTWRGEySVpkhr0rKj6cjz6bczEshrt3HNghpllpu1GK6IES8U/Fnu8o2/czA
	3awO3l5b8eYBpAO78s90VoUB3zUhFeHMc4ninswPJoaJ/EOuQbxolLwYmaTAq9GOw4EYTYJt6dW
	eVOZGPD/JyEHmskEyK1OAzOvpz+exqTru+orcQG29B9q19nd4IoUkgXKO
X-Received: by 2002:a05:622a:189e:b0:4d7:e0ed:421f with SMTP id d75a77b69052e-4e89d207c42mr118106661cf.3.1760945783859;
        Mon, 20 Oct 2025 00:36:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9uBljlSH/Wv6NYpLzdajo1XNL7fsX3OsNCz/tXB8dlR9uxsqAlRBW0Renn1fwMMuIYevFBA==
X-Received: by 2002:a05:622a:189e:b0:4d7:e0ed:421f with SMTP id d75a77b69052e-4e89d207c42mr118106521cf.3.1760945783434;
        Mon, 20 Oct 2025 00:36:23 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb526464sm705231766b.64.2025.10.20.00.36.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 00:36:22 -0700 (PDT)
Message-ID: <f725dff2-df3f-440e-bf26-6f828bf0486f@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 09:36:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100: Fix compile warnings for
 USB HS controller
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251019115630.2222720-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251019115630.2222720-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NcUXLp4FR_HuNOvld1FNC1rDPl5StPMG
X-Proofpoint-ORIG-GUID: NcUXLp4FR_HuNOvld1FNC1rDPl5StPMG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX3qchI2+zJtQC
 sx5uyGvOS6C6s0cWgzY7BcpsNpq7vJDdSVnMn6eS6o1tmNL7DvLtDChskHJk+uKyHs3daDMKMXW
 aBBsNhjJGV4V5EBBFPzdwGg0NmbzNV+s+orzV7PlQgNF/DonzwR57EHk70dyF3IAvAcmV9Oghc0
 iqQtl8/gtNECjPPeuu17g9/lWCEhMdzlSAHhifgddy1nXJiry/ab6/xoTXM33qHRYIKoiPJu+ss
 NLsxFHDp/nZZ0nhnaCRApDUKzqoZrpMS+CSIelEhu3yJrKNcclNqsGe/Hey8sCCXS1H/hOtxEkP
 +YqcF4RSiVOlsjEFKgla1nF6oOVq1AzAUkBMuByxpYbaXhXskuSzW5JDZmyoCLRjsEBqLkRt3Z/
 L9yYlmCqCdv+z+t6LTv5FWwiPmAUqA==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f5e679 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PrRowSUOeYNWhlAafI0A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

On 10/19/25 1:56 PM, Krishna Kurapati wrote:
> With W=1, the following error comes up:
> 
> Warning (graph_child_address): /soc@0/usb@a2f8800/usb@a200000/ports: graph node has single child node 'port@0', #address-cells/#size-cells are not necessary
> 
> This could be since the controller is only HS capable and only one port
> node is added.
> 
> Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

