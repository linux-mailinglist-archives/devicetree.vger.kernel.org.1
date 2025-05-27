Return-Path: <devicetree+bounces-180951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE19AC5BC6
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 23:03:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BAE23B8094
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 21:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FCB20DD49;
	Tue, 27 May 2025 21:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PjMu0JTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FE074420
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379807; cv=none; b=Pp76Pl8Ko3c3Al7U9M7Eg5DocPJKhpCh86fI6kSCn3Sc27XTC0i37AMCA/SJ1Xk6tYB5kGsWqDnNa9K7TcncWekAaQCBuEG4d9P1UCJAxK6ZBucHHUui6RagmQQAjI9AHh9oQYKrmJqlbY6kEazrwPf9eDBNzgkDd8FKQJ3JaTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379807; c=relaxed/simple;
	bh=+7lmrkFQHlFAXV0QQyrHiRbF0QoKbYG80oYbBKTNEzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GnHIhPTTODafBbbsjMlLC7iWeNEWpPzN2Qai68A5HKojHzYfCLEtExT5xjNQbQEIgyT5DR/XI/PYEp8TymDw4tMTLNzNGtKkXmF5lyLU/qWu0U9OUOeO7FBBPnY5MRlyF67kZAJ73kgNdIZk9PWxfzEMQREPXNUcT53l8qv5esQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PjMu0JTk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RHTwqb029872
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:03:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VsOv4br7fd1T6CcMRlB4v7ct
	hk2voXgCn0Av/3vO9Do=; b=PjMu0JTkWX93JZ3HTHCBYQzd1vRiwiscYkhKM6OA
	vbA2zi8u+QIa9/JxmrbghIdXjk0X5tHm/K01LCekhYvfFKgBPseU7ikZxCmwr/uo
	vTZX+IpPgzJ1/RvuDxkgfcDhgzDeL4J0vCzx9R0FQND8N06wlemN2Gz45A2g8SgQ
	Yosbj58Yqfbp2tRuYzwPxFukE9dl95FCkN6jjCDnN13XnLMYgBEtTKuiXu1nS4I9
	GzXsnzNpL0x+DEHs0k3jROXjl30nydYi8z0X/YK1QUwQAj9oPjBjMuG3e8ELFeS0
	APPgu/EBZlgqQ3BNLAS/+2GE5fvG9lsM30neuc1DaqsTpw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46whuf0jbb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:03:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5d608e6f5so940982885a.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:03:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379804; x=1748984604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VsOv4br7fd1T6CcMRlB4v7cthk2voXgCn0Av/3vO9Do=;
        b=kxqfAgHT9moTXUSOgzJl9ZFqwMNLunW+wHK5lksGmVsvIZpiuK69lss3qNk0O1yT7H
         lCpIQkt4idnAnnQe8jBu8gIbIkvrgSXLiwdATo4K5iIHLx+XSblTbUpa42pu5E1rnAgw
         EVBcLZw4Qg82AX181O8pRtIp53P+qbDPO/Rgrdt0dPkMLKWjeDU9vmDADhNZ1VlU1GiS
         35pvwUkv4MYE8ZyttV5nxdxLkXvpWNxfeiiugnKzMv7nMLxBEenDic9srauBGKIBv8v7
         lwdCvvUQsuf8arJ2XyOtQu/JaAIz862ZSwM8zgKpTKlRC+HZmpzm6xuGn6b9QsCMw0VO
         BQVg==
X-Forwarded-Encrypted: i=1; AJvYcCU5gRaWBCrwL8QwA8RePLPesHgU1nF4YkavvGKa47UgqmjZ/ep1Vl2evb7+Q8ocHZ/gEqY1UPOgUhcN@vger.kernel.org
X-Gm-Message-State: AOJu0YzFOKzFvxSgYmltLuxmVqWmJ22VFw3qjziWiJ6ohODx2+JZr437
	abqVnIpLVrygKcl6RJbBAC8s2ChM+5/Ws2T5b+67/gEI3fvpql0AyzgSOaEDbmWvGLhB7IJoAQN
	O6jg6Y5cw3l/utIwO+wibOerBhnYsom6bb+1JBXUy5JyUfQBRTw2QbI9zLzU3Y3O3
X-Gm-Gg: ASbGncv9Jp61FwG2VVfhD8VBgUj4eF1nzGSEpH/idZ4zqho1iT3IF53mdPMDLyi9Sxd
	arhqPghAB3Jt6iiykjJdyLWh4vW/zBVex5LQz3/ax0DB3VHnrcf9LsS7P0kF11DqxUKMmo9B3ra
	8DWDimTuy9Cp3/+9+TRKIPccLt6HEwdXhpeEUpmUkaxcL+Ip7Y84Y+EN1vqP9rugxkLnHXr2eNO
	bJhHzryANvtO2aoX8bVAeMqSRsPDv9xHfC4BnKTpz6fvep712GV1+gr+ZbrsSK5e0lqONI1dAxm
	/C+X3NrvqzQfvtvNHxegKg77d+GDUZcX8jccBXU9G7We8ERz8jIzGCo97eIFIoLBXpt0qaKgLwU
	=
X-Received: by 2002:a05:620a:1794:b0:7c7:bac6:8b7f with SMTP id af79cd13be357-7ceecc2d5cemr1965853485a.45.1748379803797;
        Tue, 27 May 2025 14:03:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHey2F+1GmRJLbhJPjMP4o/YRYtrCtiGE60Hp1Q7gbuk7nE2RxX+76V8r4hyZF/SGD9E8GdQw==
X-Received: by 2002:a05:620a:1794:b0:7c7:bac6:8b7f with SMTP id af79cd13be357-7ceecc2d5cemr1965849185a.45.1748379803410;
        Tue, 27 May 2025 14:03:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532ee738f9sm25865e87.237.2025.05.27.14.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:03:21 -0700 (PDT)
Date: Wed, 28 May 2025 00:03:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/6] phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
Message-ID: <syuv7z7llocqzqsg7k4chd2lejnjsv3fzgif5eumxkp3bdtrrw@vheqjejlyxgi>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-2-f9a0763ec289@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-2-f9a0763ec289@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OslPyz/t c=1 sm=1 tr=0 ts=6836289d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=i4r9q8SyThEWzBBqjdIA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: m9IgnyDxvMa9inXDOJIAI_gJZBux5Hhp
X-Proofpoint-GUID: m9IgnyDxvMa9inXDOJIAI_gJZBux5Hhp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3NyBTYWx0ZWRfX/8If83qL14Cf
 nXqT95OQgGi/yQeFcw18via4Dpp/7L079c30MPUjkoOUfPmVrbicb+clIZ7gT8SYqNkAzOK7EzA
 eoo3087uT9IQgOOIAXVaRLtVZGkuC4S8RoLFuxvVu7wb3Rrc6r6Y/fZhkxYFY0OEyM9oayOj0xB
 eeQOQ3mNPZoEFqiRf/UUvzYT5PVVL9J+VyX8DCM9KEDfTSt1pEiijqSIJoaykdIdcfIYW3Nxhcs
 rl3yZAPGMpvK9WqCbQAVnO9weihkYMRQy8CSOVDaVCPBThQAfwgoaTsWJfVsj6AmpX9AvlptqJq
 /jmhMJdMPh07yEjckhK9jNcEA0XUec9Td/Nb7hDrbO9EDeZOz0Nje+HDAnzj2FHTM461QZH1lTe
 zFhUprJ4d9hVsFhTwey+H/eyTXib/Zp3fHmbOrIKgbmI4KyQ4Sh/JOGmWOsv5G/628ktpzWI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 mlxlogscore=928 adultscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270177

On Tue, May 27, 2025 at 10:40:04PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There are a numbers of ""modes"" involved: USB mode, Type-C mode (with
> its altmodes), phy_mode and QMP_PHY mode (DP/combo/USB/off).
> 
> Rename the generic sounding 'mode' to 'phy_mode' to hopefully make
> the code easier to follow.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

