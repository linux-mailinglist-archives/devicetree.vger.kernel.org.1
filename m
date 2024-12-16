Return-Path: <devicetree+bounces-131409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2749F316F
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:24:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13F531887905
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7F0A20551E;
	Mon, 16 Dec 2024 13:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CPW5b/Y/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC801204C2C
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734355485; cv=none; b=tAzir+RSWwAGEIuE7SHDbzq138ZEsVIDhKhjLKbmYD93p3+fHpS0rf3zol2a7mRxoX4C7vvuqsrgwbpWGybLFZBz/O2d/t//ngsqqKdoghR4dgewxutUPpEkZSIFPO7IS5vRVbNKhUeCmk2l5cuzyUFzuTcAvSQKbeg9vrwNuRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734355485; c=relaxed/simple;
	bh=bzqmNQfWCCzPErXOsUzKJkneJr987eONxj/xWuXvctc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=npgHXhoHcUZw6U5So+4+9Y6k2Drk+OFtLZllAom28PBiSGKcHjUvmTWW3Z+C6fI3VStT4F8mzUQ1+odkWuAe6HCChaINdWJ4MgxeMzkum6k+NtxJQUVy1C7GlHbE8LYgE7JnB1KZMYfcVzeFw9w7Bh9b5Vrb1e6q4MkvPAr0EPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CPW5b/Y/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BGBKkdH023577
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:24:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ddJJvcV6JfmZR8EvhLTE3jz8GYYGpgaSZHvZTGAa840=; b=CPW5b/Y/DTSNOqWs
	XmRFYsJqRRy2pGwxT4cLmXhW2FS6lj7cQF47Sk2ZY/ZyBn9fXDSJ8YaqyXz4kYny
	SHcQm84TsiaHUvsXKp1N2Oqnh865vXB0346nvCjBpUCofxQMyUzCw9KWtTcYVLoe
	YWZPRvsiXHf4ZOW/l1R/LAE1zK9xGUtrWo2pv+dKkemFswpElhkV38wVoAqaYrEm
	hALn4sOD5dpCyS3fJJWw6jeZ7BVlpJ+sTVCzT/n4uZpZzgxgrOCNBuGJIfxMp6r4
	NKD+Bl9TtEV2xWpNYml1CTijN94TcVEmp2PXi97O7ljR5hfSPTUc/jaQ4qkq1E9p
	V+dfhQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jk8grbcp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:24:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4679af4d6b7so9024021cf.0
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 05:24:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734355481; x=1734960281;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ddJJvcV6JfmZR8EvhLTE3jz8GYYGpgaSZHvZTGAa840=;
        b=lCogxY0IlGezrgtxn1Sn7O9iwNsjBIFTClY3KDWtjBPI+FdOQHKFtA7gIPlawHCJtb
         efq3Q+Ah0rzEOvNPxJeg4qV0RkzDU8/ERkeO50m8nujgWiIMBuKBwc8b1M9XKjx4tzxi
         jipG/8W3s437w1an9Zlx7QfZ6ZbUtsnVWjREWXiSZtgcopKpGhKLyrADBMb/kcVgZWxn
         zXUlaUdDW26LGqZi57pRL0kLYR3H/7avJvdjiIHL+3d/kFL+4mw0Qcqg9jQTHudOIRs5
         MJhfoZbdYRrVIv3rOhLTSpLOFNkswjVTAbWGkj1Gog5jzb+ftKa26JTAd53U69P/XDsO
         3GqA==
X-Forwarded-Encrypted: i=1; AJvYcCXtKhHcvEPEciWF6CxkZy/cLcvl4HyUfnPfs/7LCAR4/CDB/lxCmXO+Hg9P8ybWIwOfBcY2pwICmWZo@vger.kernel.org
X-Gm-Message-State: AOJu0YzDuB1/DdGh2MjwI3B7mMqLQFZfRVA6Y/ARZb1CYDpmSyRJferU
	zacoNRdwyDQa2FHPDHoYbljuHE44SQnOHabyh5eXASF5fW5pCcAe95hIIaqku6DCu66juuf8fDy
	MYsCUzuXSGs4gdqkuUIWtTDPJSzsJYQuYcHHLOIQ1BFHpzs5uh+Uie8u4szJA
X-Gm-Gg: ASbGncutwMpS3FJCrpAqPhY/8vPLlWR8zaVgP0vpAgKmBL2ytmTZ+QSHf9mSbJhZPeg
	307Kljra3wtGwMlpxqmV/X3DbdykyaMVwDun38vHg6VhcHMVbz/i8MpHNPu53Uy5pHPG1fGmDGn
	YE8YtIU0fqZkh5UBlD1Ga3z4RD0v+GyKcU7+9h65C+AFPoaoUcQGPxu5XCIm8zTLVBz7xx9E0FM
	Eyi57t70aVEM06XdtVyLOYYogIFQKHa3PYPf0cChz5IwPic0qSa2KQsx5I4AVh6PjY2UWN4K0a8
	bFRKZhv0eRVPf/xnTKll1UKaaRfwp2FZjZ4=
X-Received: by 2002:a05:620a:2a16:b0:7b6:6765:4ca2 with SMTP id af79cd13be357-7b6fbf41a43mr826588085a.13.1734355480848;
        Mon, 16 Dec 2024 05:24:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETNA10NH7CEL6e1jIBbcYdjpx9fqxYSa/P7akVHgXDcrLHEht2gl2CopgvQyQyU2eyAfemZw==
X-Received: by 2002:a05:620a:2a16:b0:7b6:6765:4ca2 with SMTP id af79cd13be357-7b6fbf41a43mr826585585a.13.1734355480470;
        Mon, 16 Dec 2024 05:24:40 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab95d813afsm333044166b.0.2024.12.16.05.24.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 05:24:40 -0800 (PST)
Message-ID: <04018ad9-f3ee-45bd-9d4a-be3d52f38b51@oss.qualcomm.com>
Date: Mon, 16 Dec 2024 14:24:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com,
        quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
References: <20241125105747.6595-1-quic_mukhopad@quicinc.com>
 <20241125105747.6595-3-quic_mukhopad@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241125105747.6595-3-quic_mukhopad@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: yhAxJaZ26vNrBKUF72JbJ5D9w_LD6HMb
X-Proofpoint-ORIG-GUID: yhAxJaZ26vNrBKUF72JbJ5D9w_LD6HMb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=972 adultscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412160113

On 25.11.2024 11:57 AM, Soutrik Mukhopadhyay wrote:
> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
> for each mdss. edp0 and edp1 correspond to the DP controllers of
> mdss0, whereas edp2 and edp3 correspond to the DP controllers of
> mdss1. This change enables only the DP controllers, DPTX0 and DPTX1
> alongside their corresponding PHYs of mdss0, which have been
> validated.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

