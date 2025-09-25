Return-Path: <devicetree+bounces-221368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6398AB9EFAC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:46:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46C94160C59
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3EF02FB632;
	Thu, 25 Sep 2025 11:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BwL9nOEp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936282D1916
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800790; cv=none; b=YHhS9FLw5UJuc0Cx1Y3Tr/Wl9jcdpzxMO8oaPPMpp+rLViR3tmDhDUeGUuzXFcAfSNN8QF3jC73sjQFKdlwYSsVsha/5yCdEhN7/0I07Y0kcgn9U/L+QGzaQ68yA69Wj3cqr7JO5kBwF6obMIy6xXZdRDcuXiNJoRUh4Z74pMA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800790; c=relaxed/simple;
	bh=7DUJfiYTs8+x3mc2MkZUdIPuwcqgS8adOyhUYXmp83s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nPYKL4NJP4rM1KwUkglxwp9V/RtW96W3PE+jiqmyyBGzNgEblHm0voqbaSfgcZjodzzex/wRQLO9MbaUmhPIErnbAogUDz/TF3qum9sv0PANMXn/5fA5AuGRtrWQ7KcO6ZkM/c6QcmvVnSDBJGteBY+XsGgkjTL3sri90zHNvRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BwL9nOEp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9l5qu029974
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:46:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SuXsHHwcpiqJfT9yqqeUFDXI9jlqCp7KFuFE7uhFDrQ=; b=BwL9nOEpWXZOCVxS
	MSwnEg3+NGGJz/QjUi2JEUTIE2M/TeLzYM/bHQl+tRcJpy1YANBJAy19WT41iACs
	a3KqOxg/1/Qr1qksLVLtSLsteL73hBt49YNZhf3/5rjdFIlRZUr3gziNSiloXwmS
	hyWqE7Je8p1gl7fML9fJ2HoBcCl+YU+OMcGMcglx50q9I0G8YzqcUm4n7qupjl+x
	i1qk9jj9UlXosc9RjhV65PtVzR1GSc1Ys1nwNA8q4IlSCDrhYpTx8V76klzSwr0L
	n9YmaQ8t5zJiAwMdaKebboJI8dIfKaBdTDslK1YGQ4r6qr5ZVcJXn3aRU1Q3RSgO
	UBmRlQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fqtkm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:46:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d8c35f814eso1658781cf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:46:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758800787; x=1759405587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SuXsHHwcpiqJfT9yqqeUFDXI9jlqCp7KFuFE7uhFDrQ=;
        b=N+DNgN7/fLSRgbBdPIP9jBLDS5ELfi046g8MAmt32x4RqBSLQNpQGnfVqaqoA4AgPe
         K+JJdFiEDDnfQjClveV5PeAai9+ji2KawtbxQ54YczkUgJQSnVjrMtsBwOsMQw8dlsTH
         zWvg9GoX46Uw+X+ZsdY4u8136INDxb41x2mVIZZDMt8tUM4+a/7NZ2biZ7KFTjcSUDo8
         yg+0c5AcYZx4jeYGic6XmPcMy3gmiiZXZmhe200n9s7MV82o3dCAeWxjWy2fDGze39BA
         lp84oZNDaH96IOUap6wYWuBekme052ldm/blHv7WBwXEc30T0B+mc20gOdAAZl8APY9b
         dmlQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2WlH0eqQxpWrTrgthkSD+Es64hGoFIarxBSVQLqdutb+rTZRaDwTgaQWurBlQF5JK4YfrGgQ5Rk9I@vger.kernel.org
X-Gm-Message-State: AOJu0YzsliR3P4RYySQhfMkfqc/dXBpNPJkz3kb4Al2hJVQXCJ6NfxCt
	fvSCK9Ij1m+Kbx8oI8YFKd93UqHIAn0NhOaDTPqDzKrRmhQ5bkAa36yCr0xuZgilJVxXsEDZAD7
	5rEvwufljnL7cIH2LQv+0gmcr/ZpjcTF3UWhU8wI1mOv5YVyqm0SrORrNHgiyQ0OB
X-Gm-Gg: ASbGncuVUxmQyRONn8739zfbZTfLQLSV+8yIxtA45gmtn/UUiUo/hPfhFNMtHEfspjB
	FQBm0AGfxM1i6uqq1TYOM8j0U/HX7N7x65SovxsX0Tk9XjmWHDNvRJ8nmtPBpMdFVvwEy4qELSZ
	9y17ntACE6HL8kZwGwaUsrLJVAvYIOZZNcMx6R88BIiwuAhBCiBzs5wXkVl3zvF5rGKKhW5FAK6
	eWw3pwS7eGZovZDpO3PrHOu1mQ+zXECKlHEoM3wBBxtUlP3IV2r1WEYSafieH03q1IuUSQo2vU/
	lXdBkTxtW5fvNqyr9HwiL76ddZFK8IdXdJfeupNxDNOh8gZ9fNGtiPJJkerLjYaulsHlmlCLtVZ
	ntK3xthTGAsXZoSVF1gTw4Q==
X-Received: by 2002:a05:622a:1905:b0:4d1:7b86:3618 with SMTP id d75a77b69052e-4da47c0cf8emr30175781cf.3.1758800787394;
        Thu, 25 Sep 2025 04:46:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGO/ijx0jrPWvk4fdd8rSVeDWSkOXP0j+0q+c0/jbMYaJrmCFmJzEa0Qx+2CaDRqh27fdMYWQ==
X-Received: by 2002:a05:622a:1905:b0:4d1:7b86:3618 with SMTP id d75a77b69052e-4da47c0cf8emr30175551cf.3.1758800786949;
        Thu, 25 Sep 2025 04:46:26 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b370257a5c3sm4126666b.110.2025.09.25.04.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:46:26 -0700 (PDT)
Message-ID: <6f3e528b-0989-4d06-8b28-7d98d9de9548@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:46:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] pmdomain: qcom: rpmhpd: Add RPMh power domain support
 for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
References: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
 <20250924-knp-pd-v1-3-b78444125c91@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pd-v1-3-b78444125c91@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: A8USd6pLOhkVoxEJagKebLkPGkv1a-xq
X-Proofpoint-GUID: A8USd6pLOhkVoxEJagKebLkPGkv1a-xq
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d52b94 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=hka-zFMH_fk-WL56CYAA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX90LO7HXLzLDm
 1hb1qsQqiBHN3gk0zGkQ1dfEQB/tbyYQj9jq1MEjCvVuhIqVUOah7XmQ2mxcaJBGZ2+cc+/lMDV
 1KCGwNR4nv3ruQZ2WIz/i/M0H8cBbym/M3uvMzb245H+ANfUkDogs0SequZ/9W7fPrrgvt41307
 OOEivr5BOck8mC3LO/piPMweSomxGehmJzRI0SBs958zeHi3Yx0zh7nava8oS4utQe+o/sSDXVf
 oGGqmqz+D9LBl21JkXAiCTLfVvyrvhRqiyjoaXtTnrV0V6Hx3VfYexYZKU8bej+XynwbX/Ixepi
 M+ngAY79uysw1jRd97zy/9dx/3y5a0DHffg8OAYXBpOgCB1LmMWeQqYY3h/85020BXLpbkIpk8z
 v0SuRelJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On 9/25/25 1:17 AM, Jingyi Wang wrote:
> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> 
> Add the RPMh power domains present in Kaanapali SoCs. Also increase the
> maximum allowed number of levels for ARC resources from 16 to 32, as
> needed starting on the Kaanapali SoC where the ARC vote registers have been
> expanded from 4 to 5 bits.
> 
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

