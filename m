Return-Path: <devicetree+bounces-232984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0F1C1DD8F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 01:04:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 102EA3B1016
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 00:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBF91C68F;
	Thu, 30 Oct 2025 00:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AZzOjsly";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EINaNLbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F6211CBA
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761782667; cv=none; b=nPWkHHU5JVUP4+onPTL2S6ugd/17qbcf2PgVtYOoDnyu4m2lPaCRAlaEB9equaUy5j6I+af1TFmu8bT7WM1orNa0nU+j/LlPWaYhUhB2k9ZK/NH3jJHvR+i/tolWK6BLCkUhcoNnZRHehcMefIBaZcYhgjH2glKJJRg5YGE36jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761782667; c=relaxed/simple;
	bh=e8La3PhKLAY0yqATjn4W+M/31632+mqbSgzSPOUT1ok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YRcCOkHvVzRf60ioR0jhhLcSGbbpuXnc6rp0noU64zYwJNYOQVB4G2g+ZmJPcwGXhHCAhpnBEtAPbH1wmUsa3TsjNpiPLBhaLwAm5Ica7/+vdhCw9TSvvWPP4esAV1e8W/vPEHTlyC44TFiyMWGzUalIXt+/ijlEGKodrTI0pHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AZzOjsly; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EINaNLbc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TN6rr6816754
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:04:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LmQr/nvqXK+zOFXNOeHfnc6G
	NLUHSfAv8AGMrlOSOR4=; b=AZzOjslyn+AP6WLjvmjMX420G6Qvsy/DISlzjLw0
	KWQZA6TKF17Aacb5Yu0QWeHZNnFlDO8+ALvD935093QNgc5fHMGJIQa9rIL42NHA
	Z29JVa2n1aMfQ4W13LLfkdbMt/y1dvpw6dwF1YBoZ/rWD/p1GmOCQwp1HfQ5Y742
	Kbq8EDDEu3XZdPe6vCMQnMU+MEGf+/LRKcx69w9xQr1gpOsKFSoE0JWwS3dgc7ny
	XoiSMn7IWGZ1WKYmmn/RwNEmKx1veRy2eQj8Z0Hpojunh8GOOK3sZ68VXFt260Yr
	EC1bQWqL2WDAVvEfplslbFtQO/q/q7rldwf8ND5+ww72HA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3mxghnj2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:04:24 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8a89c9750so10507171cf.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 17:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761782664; x=1762387464; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LmQr/nvqXK+zOFXNOeHfnc6GNLUHSfAv8AGMrlOSOR4=;
        b=EINaNLbcqOUBfky6XcwD4C4eecPBr93cgiqtbiaJkSw2xbUjZQl2W3BukyjjhzsTt7
         gsM4GCVepkRJdRkQ8ZQv1QQHU9vsrzDeTr8i34QnrKiF5A4J/5/bm/CFXViEL0v+4bIr
         L/Q4+Hr1xQNdQUR5K2dXkQFxEJS0WqIRzpc4gz1ixYz1jFO8emGfrWZdFq6aMK2ovG5f
         NnARPlWFTs6lZ3t8wWnpU9Ng8wdSt3RP4iIqyx9E/kn0dLS9v4zffMtQsML4BHOQiv34
         2hhWNlNG9hyYRtabPjv55k3IJ6Kg3ShEAtlEJl1UqnbbV9uqyvLB2ECgLa5KCQTQynqx
         lErg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761782664; x=1762387464;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LmQr/nvqXK+zOFXNOeHfnc6GNLUHSfAv8AGMrlOSOR4=;
        b=HIKfIYwGbNDoEnce1+UHH/7jbzJfnvXxgXYyUzK8u0GIf72yGODlIP02Ta2f3SvwRU
         zWK4qryybRrc0Jzn7SRtJfzD6rsli7oIpiZKjstDcLODYFy1bTCCPo7Sna82DlABfYYB
         kYiaG7OKJz3OsNiUMTwzMnyeL4XkZFMb0UUk9gEwIQElG86SHk83MCwU23uaBFHB4aAI
         EvN6kp8O+JM86Ocq2bKVepI/FkPa/133dl+ddeHaksy3suWYJ2JgC315zI4bTP3SEtbB
         RWjwZi36fHRkGASyiD+l4yq6o3COid/cFL5WjNRxmNVpXr8eF8bxB2XVYkjyFwem+43E
         Syjg==
X-Forwarded-Encrypted: i=1; AJvYcCWN1oHBB3/z/v5/USdFuoGmJe+PA4pZ1tkulJjwxpDsmwEwey87CqkrBE4fjNNBPsFlUK4ZuqZyn7tY@vger.kernel.org
X-Gm-Message-State: AOJu0YyTzmEQoj1T5h3VT7dFTwnPtFP52xHpT02QtTebMLCp6OvZ4uQr
	Cv0r7Z8ZJQ4GYEgzk2In5ag/SFOhoj5FL4cRePHcEokTQmOmkFzgXUVlNW0UcnhQa5J1tLlWT8s
	vN2QMWNirIsN28Vb9ttXPJ5j01OBSQYQlMGl3rqLeXAnSrE7BbKX90K2HD3aaAri7
X-Gm-Gg: ASbGncvwyUh2aYR8KMXCJziXzklTtIYWDn5GxvVaCgl1q0zfGjT/D+iQyOJPVlC3ycP
	xPQjivM6wcnOjYLu74+c0NA4RBDs+6Q7VBKSKq7L1Cz4QqzpD8d6cUZ5I06B5YaGX103WOCQ2GY
	iuh48jEEqDk6wHuuRqzNPMcLVqCRvQRW0i0riWCdeacWD113KWA6hygDAvPGqC/7HCGpAUJm6ns
	GlbkrytsmwJWOvO/7WB+UtjdGJJi95DuxkXUdm5b4yNVk/3A4a0+S+YnGcwx0pfuT7GlIlSq1Ut
	FV3qq3uwn/NsFaxqpECOoSI1waaTvYC7/bAQhpuR6/js3dTQhKZf8yYnncgyd7TpjB93ozAr2Oc
	JO9E7coWfli4lpPOnDhZskbLPgpNsmZ3+Dvwa9c7Tke1ueivNHdXBbLvzADQl+aUMRkEEvG/BOm
	8x7vUYnp2F45Ev
X-Received: by 2002:ac8:59d4:0:b0:4e8:9704:7c83 with SMTP id d75a77b69052e-4ed15b53e60mr59019501cf.14.1761782664168;
        Wed, 29 Oct 2025 17:04:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHls9al2XoteQcyohoS5y0Zyle0J/v2kM9a5LZVzgtA4jNe9zTqJ/FMEHsgEyEmUumiISYvUQ==
X-Received: by 2002:ac8:59d4:0:b0:4e8:9704:7c83 with SMTP id d75a77b69052e-4ed15b53e60mr59018991cf.14.1761782663698;
        Wed, 29 Oct 2025 17:04:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f7444bsm4248514e87.85.2025.10.29.17.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 17:04:21 -0700 (PDT)
Date: Thu, 30 Oct 2025 02:04:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v7 7/8] arm64: defconfig: Enable TC9563 PWRCTL driver
Message-ID: <jjbiamlcof6gttme3crotwyzsxtrguohaib73gcsaabpan5fqe@s5uroqqargti>
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
 <20251029-qps615_v4_1-v7-7-68426de5844a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029-qps615_v4_1-v7-7-68426de5844a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AuHjHe9P c=1 sm=1 tr=0 ts=6902ab88 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EhQ9wbuxbXqUBhoRm5MA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: x_SljLl8GYp7rX1jGnQ7_wb6IQ89bdum
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDE5NCBTYWx0ZWRfX8rRHFwlNXKql
 k8nb8z+VKe9T9yVOjJ6dosdLZoBIZfu37ho7S+N8swJINvqeLSl0loYtwTlX0tr1Gj3eTdP3TJs
 QhnEk8XdW9H1PrxRCzoHMANfb0mIMgJN10Z6TmWgHo4DQG9w266QhHL6PbOV4NaPlPqxoz1WqRT
 kocb5o5k+UMJMetbXgIdMakW7/PkQgEYoh8QTm1pTrQe6YuW/WrCZDSqGadamLFQHR4OUmK8Ihm
 8XHYL4IHkW3Ueeux7moa9k4sf1TrookUIpL02Ha2MA9HZqDIs/eiLLMR29cWIHD6sBzB7W7kQbc
 UvzqYC2zNit/cO1zCNLQkdqk41P+10iq+3gORfQ51MD1kheNr2I6N2f8q9JmUKilU+GAor894ZJ
 Sch18GlD1YgA9ZBiDCEp9bhkNMK5xA==
X-Proofpoint-ORIG-GUID: x_SljLl8GYp7rX1jGnQ7_wb6IQ89bdum
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 suspectscore=0
 phishscore=0 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290194

On Wed, Oct 29, 2025 at 05:00:00PM +0530, Krishna Chaitanya Chundru wrote:
> Enable TC9563 PCIe switch pwrctl driver by default. This is needed
> to power the PCIe switch which is present in Qualcomm RB3gen2 platform.
> Without this the switch will not powered up and we can't use the
> endpoints connected to the switch.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

There is some broken logic in your commit order. How comes defconfig
changes come before the driver which actually defines that Kconfig
entry?

Please reorder your patches _logically_:
- DT bindings
- driver changes
- DTS changes
- defconfig changes

-- 
With best wishes
Dmitry

