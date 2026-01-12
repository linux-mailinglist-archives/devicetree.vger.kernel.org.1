Return-Path: <devicetree+bounces-253841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F8ED11F05
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:37:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4E9573008169
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F1C2D0298;
	Mon, 12 Jan 2026 10:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TjguIGn3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g8dZXGIf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C022C11E8
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214224; cv=none; b=Xq1Vdfgg11FL3mrRWtUqeubRfOM0tPkKsTLicEeelz7z/zMyyW8M4+QYTt3vDyAAFpw9ChYnS/Jy/tWhiN+KYvF5iBtrGQw2BqIclZVX/rnHJb6cMFQaMozRZT1SisKB1VruT84/xPgtLSK881KUlql2agN4He7xPj2LpjhoJNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214224; c=relaxed/simple;
	bh=QbgWNSzIoOhG5GoMkMznH/hM2py5f6Wj7h6jS4oFLmE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XwkRq8yPmES6u6VGZNr+uu+uPUh4bSj1GdatarEHi4yeWZfDgmtbwCvolIMc4YRsehhzNvrtgSsFuxc2YV7DmMOm7ZSNzZRPZkaig+X+0dneF8IYykwxCHcAsGslop0B9wPG7qOn/TPbkLBnF4lMXb75eQrDW4abNdS8nku0mPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TjguIGn3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g8dZXGIf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C9F1RX1091980
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:37:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hfVyE9hj389TcKf1IZbtDL33a7k2ZEiOtmVjf86fe6I=; b=TjguIGn3WreHU2Ir
	o1FE4ShcE8WH3AdB0vNY8q3/Da3DZ6GuPr1nOFhm8YMdTKlE2E90hn1fk1YSezzI
	dVTl7//NOf3WTiAqqu6VfjLXzUTVkHBtwaR0/d0K+7lTEF4wNs8yuyYAGkLfRVgO
	9tZaJd6M9Yt3GxRdVJOzP9wyB/O8a5+tByY9n3Nzd3EztbdpHlYrYvDMaQ1XKQAj
	/PQyk3mMsslhhG7WRzrtbqgVVA/AZfz5EjWWqG0nR/kvMSkR02wV13cjuzDpg0zb
	Un85vRTU7+GrNfxqxr2FezvAboztz8BzLM8wgZ1+DAZ7wsgH1Bbudec5lgfnAX+a
	x6Zd6g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmx5mg8bk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:37:02 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so32588041cf.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768214221; x=1768819021; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hfVyE9hj389TcKf1IZbtDL33a7k2ZEiOtmVjf86fe6I=;
        b=g8dZXGIfMTQRMq/dk+bO4Nku0xirnV9bYo7rZSHSkVi0Luzap+TM6uvCulu2B+sX/n
         2e+d2FcMukx814CyJF2Y2x44UhyW6bwa9iDEzIeRveGixxjexBKPVEHSO1GGHZUdild2
         9+kT90SM5EWPOKbPcJWguSJZrDIa2mEJgx0+CDOGeGrkrp/m97fSwDIkVdwfwr2E4Pr4
         JzitQX4T6SQ/lndzbSqmy7drAl2G8/otc3k11thrPYgr+P4+cgonkJCF4nXPk7dVJhgu
         Y/L6YhO31XE95i2kzlgs4EKOSptLPqotciTlyvYTJz/rgiZnF2W2sYHT09SuUhyA283R
         EBmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214221; x=1768819021;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hfVyE9hj389TcKf1IZbtDL33a7k2ZEiOtmVjf86fe6I=;
        b=YUve0CWU/1vXzlCl9/wqM9huECiPqOq+S6nmMnrXb2ayBR11+61HlZfg/EBUg3RXfs
         O3hlUneapdWphKWuMZSuItgicaHNnyFLT5ZsiNmmrY/6td/jdX0qc1Nns+lW5iJlR24v
         79GEKWbieMOaiMTUTECK4oSrRlsIph6QY3cjvPUPERHDt5FJL5BwRh3gxgUxuQdf/op9
         7LAOyXDciWNAxj4h/FG6LEMYhy1H2PGrjV/RrA9oYziygi6SLXdydlF0gFEeYcxzFPan
         gcW7MdowX/52o1m97dmWzq+b3aiqJvYfvX6guWSGD6NekPZhFqQR7IJUZ95C0GZfopQZ
         JNQA==
X-Forwarded-Encrypted: i=1; AJvYcCVlrwyCYsJTGbNxSR7tpnscQtbFuhpBc+Si6JVLlNCk1eHTvKBC5rlKESkxVMDZ8YVIvme9xUHsTFYa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqmy4ep4wuzpAzHQvnJbU0a9Q8mVKRIt8wLtI1kiQ+PDPX1b4J
	HBCLSA3rtqom+dTehdAo5a1fuSOhR2HIwvtFpr9Ttxha4vI66CWzjvYbJWWMblL4/uMe5hR+tX1
	3NC3ybMmn3NkhTTDZqYOFVWtrMlB0beg6XKj0o9nQcbKi7HFx5nU2jSCQkX3HWVJG
X-Gm-Gg: AY/fxX5PL7YYaFRcG9Ri/BWTgUmq0hA7g8BYdCOauFZENBrqVZy1dXIaSjQMgC24i7h
	pZ3srBxjvSj8COcKtcbFgLo2rqCMnrpw3znWOuqhwAi18UdpMr/xryFBjLDEZ8AulrNNqgAedTX
	HwsKTvE6A6Hbi1wxx+kEqbQjdxSo7X+sXajEvikrefd1q2IPmBdx581JLhB4RSZEqovqTRzDx4g
	gSLlhWqY9t5s0Dlz684nk1vSHAgqVew2gjLm+JCLM99wrIJvJGeKcxjVcMpvkcqJfRPFu8X2hWE
	yzNwSKTJMPEiuFDdXwjMbtufud8bUtD5pbhL7jDp9+e/YAHnanRSCb4l+3dFfbGN/qEF7F+OjYI
	0WF5k4kCde8iLt9gbSYJHraxSVC5tpfj3oEAcHOHldNfb/sQqm10IbN0QSY6xSGNa9J8=
X-Received: by 2002:a05:622a:408:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ffb487595amr182682821cf.4.1768214221637;
        Mon, 12 Jan 2026 02:37:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwPXJrTbjQzQTcAzWAfSbG7+Ps1FzbEAnhMHNBzRiaoZEtHpgn0LcFOeGeJ2lQqXcP7SdxSg==
X-Received: by 2002:a05:622a:408:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ffb487595amr182682621cf.4.1768214221046;
        Mon, 12 Jan 2026 02:37:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86f1e95273sm664311266b.62.2026.01.12.02.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 02:37:00 -0800 (PST)
Message-ID: <534e88a9-6863-4494-a565-859eeae6fc9c@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:36:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: "Martin K. Petersen" <martin.petersen@oracle.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260106154207.1871487-4-pradeep.pragallapati@oss.qualcomm.com>
 <yq14ior5yey.fsf@ca-mkp.ca.oracle.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <yq14ior5yey.fsf@ca-mkp.ca.oracle.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NCBTYWx0ZWRfX0bdaC3WY52Jq
 zEWJWHXaOSxFxavcCGyvpdOtrPXGol/c7SUa+GhXkM1elStvMQnVkiRzITN9wW8RCT+oH80IQh6
 M+6slUkZVitXu/MMdcD2hjfYhFhENQWwIiAJ+kAEuRaRVYQlm6OhWUqHqiVy26ubX6nXfkstBFD
 De58aCfwBBo40HQfPkz8xPbsuMjFsT9JLb1Vsz0455WfrCaTjFD4Xi24OHg5I6ALkYkxd5jc8On
 CoVjSEo1uf+3H9/IUQMoXCBWGZlo5mf3hVCTEtonE57me01Bye5jiKppi2kPNqlXM5B9rstko6h
 ZvjjcCrVAnh+z4rT5qUhFidFMYPCl4n+mSYF2kpKJLA2U6Fn9qSyhg8zKzPb9urLhCTVttWTcdF
 zdtyxLlOKCWZ+GKsHy1pZoLQClEgEbCyw7rSOZB2wD3ZRANaNe7CuUqfWXFoKQ3BGwFKycadRCe
 dFoADge83zxkIfl/26Q==
X-Proofpoint-ORIG-GUID: sxAEZN69mPkO0n7aDaSbU5wRVhTqO_k8
X-Proofpoint-GUID: sxAEZN69mPkO0n7aDaSbU5wRVhTqO_k8
X-Authority-Analysis: v=2.4 cv=Q8zfIo2a c=1 sm=1 tr=0 ts=6964cece cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=8jcq0VWYKE_BtxzTVVYA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120084

On 1/12/26 3:59 AM, Martin K. Petersen wrote:
> 
> Hi Pradeep!
> 
>> Add UFS host controller and PHY nodes for x1e80100 SoC.
> 
> This does not apply to 6.20/scsi-queue. Please rebase, thanks!

We're taking the dts patches through the qcom tree, that's always been
our intention and the default expectation for cross-subsystem merges for
years (we'll take these ones too)

Do contributors for other subarchs only send you the relevant bits (or
do you grab their dt changes too)? Do you have a specific preference
for any of these settings?

Konrad

