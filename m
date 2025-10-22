Return-Path: <devicetree+bounces-229720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA4BBFB13B
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:09:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A1CC3A1BF5
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9449A31076B;
	Wed, 22 Oct 2025 09:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B7CsAmVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930123112C0
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761124031; cv=none; b=dl1jkQrDLdyRdcFR/gYjx9LGB9tBRz6UnVqZYpxdgRDs56IMFgF3pKUhN2BfA1V7+7rwVW1DdFwvOiCI3Zm0K4+KKQJmlxWuUeV0QvgFPLHQZTFH82oILnYOX1iGm269Vf2WByREJgUdFFUNZOmQhOI5bFbyRSWR3L+I9TO0yiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761124031; c=relaxed/simple;
	bh=U4ATiaoxVhB58bsNx8X3rRPvC7i5hP65Ww/6KwlSMVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hG/AOPlAf501eTuTLcydzf+6v+3zMqeBIpcAfeXql2TWoSlF0TxE0VB5D1oymRkJcsGAmKkyw4QFJwnrR8/idt+n6Si7Ulk4tCu8UFvgTsdhgzysKxFrIayHnkbIMUMiR2DG7VHXLgLBppsIPEOTnvC1s8rgBCmrqAp4Gv6GU9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B7CsAmVN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2JfAF004550
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:07:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UX1Oq/GaByCG4cqqLwGQJt8fbmbuId7BfFpYOsktJPI=; b=B7CsAmVNe3dx5tPm
	eYyBlVnazGBigaD3EYsn3RlB6lP/3E9Z/azL7stitoN8/8qgJTaPzbsEkbDcRm5z
	WFjFe07/dSPywv6gC3+netGDe3qH7JY2qTZiDxMfo52gYDSUVJWWTCL6wxTLcVpR
	TMKL9a/lbNMk83CNPrL3uBc/b4sGhsAB9s/lAUlEpZQG94yRo5ZgRB2Ki4DoXjvH
	ixpCXBXv41OUHhLv1QSjw7TweXrlPrw5oFxwWVYmjq6SveWCTJw/9m3YlpnEe94O
	H0/JHThywFuwQ8dylGEwEED+0vaCaJBsmnBL5r/mY4qAs7N1h76dJUc3YIlbIW0F
	D/rzDA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3nfkyc2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:07:08 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ee4998c50so5431160a91.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:07:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761124028; x=1761728828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UX1Oq/GaByCG4cqqLwGQJt8fbmbuId7BfFpYOsktJPI=;
        b=CwfSHZnTgH+8Jb1ioMTM7cY/J/QpTdaBzVqEIwOXB+0gnyKCMi6rz678vZVs+zRbIl
         h+oLBE9FSctq1BwloBGNJIPNZYE8BJR/dxVNNvWsMI21pPnVYZdZhoyg0Yey8GQop2bX
         pxFv8haM59mBGdpwtWxCpHrHfFKjqHMix4cRX4hVFrRqLvCZ0q79snq1J0HawYPBCE6u
         9AAOFkaRrMwrsR0bw5i/1KbazWqFI5gBlW0G0scB4Xv42raapsFqWwv4ZC8dudEXC2jx
         FbTSmuzyti4CnSdqaKjOGdj3bUiygZwdu/mjnozXV/MNk2puZBWFJssjnL0rw/aOYVet
         rNEw==
X-Forwarded-Encrypted: i=1; AJvYcCWzWfE97Yu3GWCAP83RFxNsNDGiIhfkIngBTIuQA63N17IS3WUDBks+W1q0Td1ohheePMBMEXQiS551@vger.kernel.org
X-Gm-Message-State: AOJu0YxW9eb55sb/G2FGNPFlRmHX5rZAtuVsNBmnp2yz7g/Vbe5Yy3xr
	1oyfYtFdATkQV5QGdsuLIBquDyHmCzHnJfiYTIYHuk8u3UXjQ5sHnMeJyjy8RGrwlwW4En58Ptu
	b67luMr2DAJ5qorw0haB47u86aaDocMB9TcmRvaA8fGUtF/M8LtTGXGwUYcz333mG
X-Gm-Gg: ASbGncvNmq3eDa6YrR+fOgxnhG99gxqJAEs451BxgCKKPwcc2RIcdqIgF6Y+R+4ey6M
	zi5Q3j5dcEk+o2D4qyUXEs9Q7u8l7BQ7nUiVoP6Yu0WFk8qLrzdn4e+sSMaAwdpuzorNfST8fY7
	NiDA8f+wPvyFCos+WV+uDAlRyQYwnD7JHe98ZhrBH1WdBN7GrctPvpDxWd75ewkZ/taGWvr7ghS
	iYvx6FsMs4buWYbztCrHdnpaRmA+Cg8nbraX4XX2IK0pvRT6Tkarg23/U8G8zJZtCEy5uCky6Y4
	TPPM3+VGxuo0zXeePfDsXav8lFReICo3OQM2/1/pd45jZ4aE9W4/YYL9rYq5GnwzrCY0x2tZmyt
	i6LvlZumKGzZsgD6vaJfC4dcSlt1x9ZuTOQ51i6GmCtX2z0flXFyMO60pwk3aSXKLyjSc
X-Received: by 2002:a17:90b:3ec6:b0:330:6d2f:1b5d with SMTP id 98e67ed59e1d1-33bcf8f924emr29437641a91.26.1761124027886;
        Wed, 22 Oct 2025 02:07:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYnE7/JebDCjKfWg4uloOPxh1RmrBCn+nnraZDMpeo8BYYdxfdxmAhCwzmMViUUHj4rDoFCw==
X-Received: by 2002:a17:90b:3ec6:b0:330:6d2f:1b5d with SMTP id 98e67ed59e1d1-33bcf8f924emr29437609a91.26.1761124027467;
        Wed, 22 Oct 2025 02:07:07 -0700 (PDT)
Received: from [10.133.33.84] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223dd9d6sm1941797a91.7.2025.10.22.02.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 02:07:07 -0700 (PDT)
Message-ID: <7901b3f0-72ff-401b-8ed7-86b8bfb083cc@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 17:07:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] dt-bindings: firmware: qcom,scm: Document SCM on
 Kaanapali SOC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Eugen Hristev <eugen.hristev@linaro.org>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
 <20251022-knp-soc-binding-v2-3-3cd3f390f3e2@oss.qualcomm.com>
 <jqunb52dy2kyygpolf5ct72j3uktln47qppuhfczazowykatt5@3bg2c6umqw52>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <jqunb52dy2kyygpolf5ct72j3uktln47qppuhfczazowykatt5@3bg2c6umqw52>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Wnops7OtoXULs8nOtVcezXJiZ9IC2tcK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyNyBTYWx0ZWRfX+aHX8ktxnk0i
 Rr4D7u82mShb7z6IZcdJZJM87xw12o+ICE0qTtmGOmNKTOl2NpC/ZgyL0dYRZpcD4UsKjb/x44x
 Wh2yeJEZPZzzCR6JLbMp/03GNg6bnfVPrgLM4nVVlyEJ6Rh45r++ddMkyjbTj324NeiBN1IwAE3
 YGoiYWOrKKBEEudBBUaxmpD5UmJZ1f/1NUHtNWkkfOpT9Ns63A3lB7y2VkXgfRd0MX/Mi2Cjggd
 tnoclsKsD1g8ghOxU/dEmCEFifNng9upzKXDP5B40KvoZjrI7W/VOrNqWQiFsaWLX6WWtnOfRrC
 4hByMKaTDzqcEbCK4S0cZYKX2fmHTj+i6TGxtCA8nbe03R3Eq7o2SmsBj8dbh069bfpFw6tjJVq
 sR2+r9qmT2XMluMeIRq86ObZeKplIw==
X-Proofpoint-GUID: Wnops7OtoXULs8nOtVcezXJiZ9IC2tcK
X-Authority-Analysis: v=2.4 cv=EYjFgfmC c=1 sm=1 tr=0 ts=68f89ebc cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=sM6Lb9GqGZImNCjOUggA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180027



On 10/22/2025 4:50 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 22, 2025 at 12:28:43AM -0700, Jingyi Wang wrote:
>> Document scm compatible for the Qualcomm Kaanapali SoC.
> 
> SCM, not scm
> 
Will fix

Thanks,
Jingyi

>>
>> Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
> 


