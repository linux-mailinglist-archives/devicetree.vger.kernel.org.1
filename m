Return-Path: <devicetree+bounces-173344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C6BAA81D1
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 19:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CF775A4DE8
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 17:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1611827B4F8;
	Sat,  3 May 2025 17:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R2gKFMkr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F99A18801A
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 17:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746292905; cv=none; b=ZUxMx9Kum8bAmI8Jy4klp6oZ4Irkpin8UYYSAFE5LIQAl8T7WYAfUclIvAubO8uU4ZYItzunSkcAMCJ5iDM5iFwmL6lmgRhHASitNEExUvzBPTvNBevmVfNz+IWJuHnYeTlM9nVhnlUvljCpwvdQdeWhMtSpjkcSACoB8NC8S50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746292905; c=relaxed/simple;
	bh=FkqPTKKa1BYfGmOPnQ1QkH3rInAfKUq2BRkp0CBjjRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NHzTmTDncVniyI8C7N2igaxRM7aSJJ08HTAs7cVbF6+7v+jmGP0IJKA/JXIyI2VGoi/Q6z3O0rLP7JgI9sT2kM3yI9XYoYty43G0k0uLP8bFtTlcKP0MYMNKBbaQQIAyOwe3xpw09mamnMgdysqD7yOMLgT2s12FqsSXaTX+4jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R2gKFMkr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 543CSOYu007671
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 17:21:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CUPi73K0M4K8c3dJhvQF7DaH
	PF0crJym+waMYMfinqQ=; b=R2gKFMkrIBVeDakGd1qOJMFM1lsPaCsuL1Ou/N7k
	51cL4eIgHohEQVKhFQ/5k6V7LxXGxChYmtnHfIYctDgt0tWTcXArYUH9RlPy1Uwo
	cFq1yr3ge9eHVBNkx+jDCWSnXMWKMygsyc39vVaLEtwcpK6fKiN74YbKkPLZ2PI2
	MNdvXiWIdIkAUU/JlSAICZoKdeRthpFkQ1N87LhHxURqHGww/6EtHslqsi4SMimD
	51Nlf4JveqRfxvTDfYT38w+qJPfhIYarKLqVIs+c0HqrwYFP30oTmx+sTqhdhfRn
	+g0ZuUf4U4rutQMYjTa+VGo28MQ/KvEQ3PL1ZVKleE6BUw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46d9ep1152-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 May 2025 17:21:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476900d10caso76590431cf.0
        for <devicetree@vger.kernel.org>; Sat, 03 May 2025 10:21:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746292900; x=1746897700;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CUPi73K0M4K8c3dJhvQF7DaHPF0crJym+waMYMfinqQ=;
        b=IRj8JYGXRFTIlAnOd+wfiWqea0Y37g7OHK3CXfc8l3AvHxsBSBPZJeyp5xDkhRIU6g
         ku8Q6uFz84jVdX1r08SkUeCPPMCtGUqUYB1MhRyQz8kGMpxAvgh1oQGfjbZbYivnHdw2
         MpJQskazW4569+zAjAauufj5FrUU/spC0uSvNHwFHNb8gyQR4M153wOjGZiU1oO3/jSH
         SJQfD/AnY1uQN7yFLO76gsQMUMFk0DmG/pidV1cWbdW/y56RCKBw/PtJJDVsq9ykrLey
         F0OPa1ICKW5n/mx5xOLekt5pFaal82qdlzG6XSWReAnWcah86LX/41ymhGNcHarCQIqS
         Dguw==
X-Forwarded-Encrypted: i=1; AJvYcCVQ1rb9cGr8G3litJUzHnGq40l867pGfpPfbwPFZxfAFxSN134XJHlkRD0JWbDVm7ElzGh+FAgrvo8N@vger.kernel.org
X-Gm-Message-State: AOJu0YxvfbGVtfPwMbXRrZAerd+em/l5B+YVHcnhwLhwQEZwMh1fxj5+
	CIeaxOq3GhrGy9jRZz1lQ/IYWQVsMw5sop/pl06nhs/ZHjYSIVEV7D2K8JGyhH9jv38tMBb63ew
	VF50pcLidJy+GBrjyCOb0OSoqhpHAlia3G/DHr52KkL6zriaOaV4MkPy9xnJS
X-Gm-Gg: ASbGncs80nGTXA+OOTpnpeOZbdyqBj+bdSWxdpFCOCBoj7f3V4z5YtZfIZ1flMYgRKO
	XzokrKpjw6qh6Xs+lqRuj3lyCjmGwGgvDcm+ErKTLZJlNFh/KeJxjgOBodkByQewmlV7L1cSgNf
	VtbOgziWCeLf8Uw3/AjNoEzP7yJKpuhrryw0b0qT0TKFcQxRAYPc63k6yoJ7RSpQ+O1XG4ATEaa
	+tNK2w5FkzwWXwij2FBiduf3RjrS1Ex0pxCqaCzkiOOWXIBHXkLkGdgdmc9uDC2RxW1Kh2zqpBV
	gNAsWh/norUuyMYCOfSex3g9y5oul5JQ/PRPK3hbU0wNTfvpjZ6A3FMZEZHz0Dr0viaiLhy+Jow
	=
X-Received: by 2002:ac8:7dc2:0:b0:47a:eade:95eb with SMTP id d75a77b69052e-48e00f625abmr15879671cf.40.1746292900333;
        Sat, 03 May 2025 10:21:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmoBZgMqriscERLtLJYJxOOTXkywtkwOsXpQzulxWIgQLOXUAe46ItjymMZEGDMLwcrBNHcw==
X-Received: by 2002:ac8:7dc2:0:b0:47a:eade:95eb with SMTP id d75a77b69052e-48e00f625abmr15879411cf.40.1746292899907;
        Sat, 03 May 2025 10:21:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f22a8sm878183e87.176.2025.05.03.10.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 May 2025 10:21:38 -0700 (PDT)
Date: Sat, 3 May 2025 20:21:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andi.shyti@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.or,
        andersson@kernel.org, konradybcio@kernel.org, johan+linaro@kernel.org,
        dianders@chromium.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
        quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
Subject: Re: [PATCH v3 6/9] soc: qcom: geni-se: Add support to load QUP SE
 Firmware via Linux subsystem
Message-ID: <vpm4ee4bjuqje7zrpay3pllvcghh547yce4nbqgbeujgdbu3lk@fahrgwfjbrzy>
References: <20250303124349.3474185-1-quic_vdadhani@quicinc.com>
 <20250303124349.3474185-7-quic_vdadhani@quicinc.com>
 <58f46660-a17a-4e20-981a-53cad7320e5a@oss.qualcomm.com>
 <9cc6bdf8-ba4c-4561-962a-74ceb09b72a8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9cc6bdf8-ba4c-4561-962a-74ceb09b72a8@quicinc.com>
X-Authority-Analysis: v=2.4 cv=EOUG00ZC c=1 sm=1 tr=0 ts=681650a5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=vrWCv2ldUtsF7w5ASE0A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: tiyJ5Xfpn5-_6TlY5eKS3ByhR3uaKmfp
X-Proofpoint-GUID: tiyJ5Xfpn5-_6TlY5eKS3ByhR3uaKmfp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDE1OSBTYWx0ZWRfX4DyKLoMj3sBa
 KlZc942M/D1jMRysWzPjLgEFJhCfib/rVRfuH6CboPQOShcW/jVGmHk0skyJwV8xFF3qUrpHyTw
 MP4LYX5MOpkNMR1LKXxMsZw9wtORbQxDOD6U5z5LoMID41A4ei3pANWsDHjPXh5g2ZBaq+9X9+v
 owoLZxeW69bi6c0Klq2DNe4CrHUT6B2Rav7Jy1nVt/z34hhGKkfxN7Iak3ugpJZr9GHFZtVJg3k
 aQH95ySi8tUZUckEYFXhjDOydNjW42HygaqYUWGZkc+e6wMNbwOkOi+XLVdwCGyTOqsvaebvXt7
 WrEIBoO2IOkEwjWEYAyJSHdbyrJOg4XYccH4pgkwD3pWh8y4hWhx2HvPR+OlbQe/AiRhBKH0oqn
 1NiVL7e1FPpZP9dy4GFZpSg42X7OC233CxY1G+b0k0dPnaDbreXYt2eNqFWioZ8KywjqkGI+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_07,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505030159

On Sat, May 03, 2025 at 04:47:52PM +0530, Viken Dadhaniya wrote:
> 
> 
> On 3/8/2025 11:36 PM, Konrad Dybcio wrote:
> > On 3.03.2025 1:43 PM, Viken Dadhaniya wrote:
> > > Load the firmware to QUP SE based on the 'firmware-name' property specified
> > > in devicetree. Populate Serial engine and base address details in the probe
> > > function of the protocol driver and pass to firmware load routine.
> > > 
> > > Skip the firmware loading if the firmware is already loaded in Serial
> > > Engine's firmware memory area.
> > > 
> > > Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> > > Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> > > Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> > > ---
> > 
> > [...]
> > 
> > > +		break;
> > > +
> > > +	default:
> > > +		dev_err(rsc->se->dev, "invalid se mode: %d\n", rsc->mode);
> > > +		return -EINVAL;
> > 
> > I wouldn't expect this to ever fail..
> 
> Yes, that's correct. But including a default case helps handle unexpected or
> invalid input gracefully.
> 
> Please let me know if you would like me to remove it.

If you are asking for additional comments, please refrain from sending
the next iteration until you actally resolve all the open questions.

-- 
With best wishes
Dmitry

