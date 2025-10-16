Return-Path: <devicetree+bounces-227879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 352ADBE55D6
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:22:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AE485E407F
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72032DE6FE;
	Thu, 16 Oct 2025 20:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EQ1Ca7B5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218831A9F93
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760646139; cv=none; b=tAMzlAhlb8ECgTF5vkh2UNBJtbqrWPbcXmnnfYo0029sVq786dSWkGrL+Ng3pWgHsB2vRToFk/W4VfxtTQcsP3rW1R5UogbpPjJ5nABCZELArtp4mxrBPJev2fsTzgbd7KyB0M95no+mdC7gMdIAdgsKgJeFfoQJHkgxAY7suYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760646139; c=relaxed/simple;
	bh=/BnkzLG7iF5vjjsEuhMhpnk3gLf1GEWGWf5wGNVMGhY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s2o81rGJEMtEktVn4ODhqEHmO0/dh1XxZxCn8uE71LAgQ93j7xo/t6SC2WkhSp0X7mA03GAXC2vSVLeTztjvmIdc8frIQm/3Hjt78551Hqltiy/JCMPvjKdcOF143As94rpBWdqtSnQpyJEsRi06lywKHeu8nLPHp3FFxoVIxZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EQ1Ca7B5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLRvd002098
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:22:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=t4XeRTtk1HhmwuJqivoNSUwm
	vc5y3nht6ULpzG7FoOU=; b=EQ1Ca7B5u3ErYhxM5XM/jZbhsVuk/QMCZSm4CVyc
	xvzCG8WsO7+QXMbVhlvWscHFpQepb6mr97s+9iKjaEEr+/0t/HXRNd9xEXXftf22
	tD71PbW0BQKQSzSycxYvagZ6q4t+B037vCE+8K8NL4YqIyQH3CIoPDWgd67c/ZRZ
	IGt754YNOSQsPQCLqSa/pw23WZcU0QrosaE/67i1AuFLUUz44/Jw0e50DW5TQ8eu
	v0nZJShbWqeG3lgcvLkPEXQxenDkMw90Vhe8fgx3hCKfcM8rYFLFp9YWGPSf9nxH
	iuOFoYwooRrICLVHlfLzpQ6axkIXcIyRUPvj0vSfZEDRIg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa8hprh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:22:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88ef355f7a3so434204485a.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:22:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760646136; x=1761250936;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4XeRTtk1HhmwuJqivoNSUwmvc5y3nht6ULpzG7FoOU=;
        b=Sqfto6DHELHwKeimAe/L4qF7ZTZo/Dx/3A6w1rcWI0mB7lCBqSPA2FkW2yF7Cv8D3D
         VswfjViqhlyOJF7qFvxfM6BYW+st9vHvzaBlZhmczmcCFUtMwkcW5qBe9abUxP1shrXI
         4rsRGj34RX4k4s8VW3LO6wJNhx7ab4Md0g1VejINw0CvTGo9ogdWhLoJf8smm03hmsMw
         8zux4ey4tg3apMIHdBtwUkh7p1M1jP5hEvZS45kGFnNJFk/wQXmh3Y3pQk2hTVpgdDYW
         +hTpwAMORnxgIbpUgTEbp1p8blbwRxcOVV5QTNbYa/rH5o8QFH5g8fN4vf47vNc/OE5U
         MJcA==
X-Forwarded-Encrypted: i=1; AJvYcCUT5U/R3pvcHEdGHfHxhGbo3hDlzYf8I3rHAGqblmCUAkVFv5OY19ysahIT1d7WVZPaKHg2Gz647Yy0@vger.kernel.org
X-Gm-Message-State: AOJu0YwUybaxc8TnCgV/IKPMljF3oXJgNVTTCqlypgAoM/RbPk+QMGX+
	7VpBxA+HsBsTrdgV4aLJCZ0WtGCuTZMBGmT5/eifHxjpjKto9JFw3T0XWySTyvpICSZ2rtVk+FX
	GHxlM6oO7fnFln4kdl8U3eTdHzj7nf4hv1R7+LO4SzVnSBRBpNfCtrt7FwBfc/7gx
X-Gm-Gg: ASbGncvPamdIE5UWDIJzsy5FksTcKUVvwW4PBl5AYvL8dmKEPh060pgmgLyOG1ydZdP
	7GGOI/D2arUBCv+L2HKLuDzCflJKM2H9Brc4dD3yuJ2JyXFKaSk4AQg80cC0r0pRPt/neDnB8lR
	xKOyqwmJdaYE3KmsUaIDZ/t0xt/l35gS+eEgIl9ldgUq3xSxnxubZfnzSwSwYGTOSR6h8hxe6rt
	m6EchOI3Hf1h6C99AUHhYQkN99bYM8vB9fFXKLt/8nb/Z6EXQXIuIUlX5yWqXqQgzNwqUxMBlOK
	7WvzLaBRKLw9pw1qfYgEmonsTFuhYO/Q3I0I1JVvXaY37COEWesdJEIIbw2VkJ7fOHzQ+rVmh6D
	XhUd5c8BGEH2lbFIJ1m4f+tA6VyUGmyKNUsc6N+vfAYC5NlwEzhgW/QLt/p5hjf5P1tcD13jt36
	dw81bQg2oNNhY=
X-Received: by 2002:a05:622a:1101:b0:4e8:9601:37f5 with SMTP id d75a77b69052e-4e89d05bcd6mr20995631cf.0.1760646136037;
        Thu, 16 Oct 2025 13:22:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrcAdKJUHa7P+g75kVAeMcu1GBVw0vLJXNi7Bmcd+TwVbNriITJu0bKiz1xjIXDkX2pPHaqg==
X-Received: by 2002:a05:622a:1101:b0:4e8:9601:37f5 with SMTP id d75a77b69052e-4e89d05bcd6mr20995271cf.0.1760646135519;
        Thu, 16 Oct 2025 13:22:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f9148sm7376487e87.44.2025.10.16.13.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:22:13 -0700 (PDT)
Date: Thu, 16 Oct 2025 23:22:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luo Jie <quic_luoj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Devi Priya <quic_devipriy@quicinc.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        netdev@vger.kernel.org, quic_kkumarcs@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        quic_pavir@quicinc.com, quic_suruchia@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 04/10] clk: qcom: gcc-ipq5424: Enable NSS NoC clocks
 to use icc-clk
Message-ID: <yegaz22k6jpn657tyuiavbchgc2unaoqgvsjn54dzdhnb6rr4s@twg5yrmxx7ot>
References: <20251014-qcom_ipq5424_nsscc-v7-0-081f4956be02@quicinc.com>
 <20251014-qcom_ipq5424_nsscc-v7-4-081f4956be02@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-qcom_ipq5424_nsscc-v7-4-081f4956be02@quicinc.com>
X-Proofpoint-GUID: vRM5rIbPLkBOFoX9hcVtM0Kao9BNbaYa
X-Proofpoint-ORIG-GUID: vRM5rIbPLkBOFoX9hcVtM0Kao9BNbaYa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX6+a1P0dXac+x
 URIi60lAbETW+Hw9oNMH4W0kEaqkeVds4Y8+M2uvOnvqM6aCKSJVIupWy+xQ0Lj/eu/JroHtqwk
 woSozHFT1GEX5n2eUb32adYub0Px2BgiPBxSDl7ADIfCE2hBViB1LGp3K3lXM/2TwmBD1Hxk6zU
 4iKnISD9LQAPVnt3UYb55hWBGPQr5T19n1mtVf1fYL+1dfwa+174uQqhh9sK3IdSO7Fxhz0jcjc
 A9nJHcccWg4lBrvBdX/AvDiUC2BARPr5BvGsHF6Jt2qHypfqeVOPZ9v2PtXVzHi55r+AbnZHZMk
 +7+1bScJ9kjOgzcClYflTAhBMpT22dIsZryT39Zf3q8FdDmKzjmYY3P+mvQIBTefefdzFdsHW+1
 hDNEvHOfYO2iug2BwoJjkxhvqLmnZw==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68f153f9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=DdE-_dUAR9VioeaCo_UA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On Tue, Oct 14, 2025 at 10:35:29PM +0800, Luo Jie wrote:
> Add NSS NoC clocks using the icc-clk framework to create interconnect
> paths. The network subsystem (NSS) can be connected to these NoCs.
> 
> Additionally, add the LPASS CNOC and SNOC nodes to establish the complete
> interconnect path.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---
>  drivers/clk/qcom/gcc-ipq5424.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

