Return-Path: <devicetree+bounces-324461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L2jVAGHuUGq98gIAu9opvQ
	(envelope-from <devicetree+bounces-324461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 15:06:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDE373B115
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 15:06:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=PuhQXC6G;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Y10kIgkv;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324461-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324461-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 040123045ED2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 13:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A458242669C;
	Fri, 10 Jul 2026 13:00:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D7D408034
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 13:00:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783688414; cv=none; b=R+yuvyJL3l0p5INlYmf8cO+dYki7H/oizge2lG+Mn/acNen65/GPXFcVkUXslpkFOFziN/+zCwX1TaYS/AJ4FQlV0cQQGADqBc0nF9JGmL2i+jqEKFEMn+ELZrG+WPkH8YzWM8d1d78KJb55NdWdbpWiIzoAaiFeK5JptcLUemQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783688414; c=relaxed/simple;
	bh=PmXeuS+A/v+x53Qb+qL+JvhuBQ1sFDSeRb4adax00Ik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bTkR9oR7zJeqcRzmjx2edFXBssPX0hxODGu/iIg4VVCZfFzUxSbnzJt0JD1kD7NLl2rGr/oVqjl2tkem7RMbJ//yDx86ZuYA2a5B3A/P/ww2U6JypU253Tj3yWuLhMRUn5GHkn+/aQ/Prp3N/n/fOKgSzMbsLIe6zBZML8Rffu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PuhQXC6G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y10kIgkv; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66AAmhx8393299
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 13:00:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d9Beo4a6GfwyHuZZh9Hbzb5Kq0VxcvFZ/EiNXB2jbIo=; b=PuhQXC6Gk6j6LRq5
	9Q+/MFiOjZajkX1qKNGTTDTIOjgf2432sOZ1ATBzTmIfXZ++iuMUHsyqnuvVjUQw
	GVrLogYnX6bKbVVd4HisZuB+eLryn733JdqcCcOs4CUfJjyy1PpcDhEuNb/qoyX2
	4Ja4UUo2VEsULIry5GC8yNb2XCypGtGWZj+bntp/bmBM5WyZHlv+PkVPn4yf7Nfh
	2OF1Z6rIlxanYzzu1SlB6AHURbnVrc8pvgfFyV5gtFzTk/65JutbJUxilmotq8VC
	8lc+U8B+i0UgWBF0akU87z+nfpaLC4hQLF1yegfp+WzOPbIEOzPKirCshqMqqzBk
	7zOt7w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fahv8kchu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 13:00:09 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-903694fd3bfso903856d6.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 06:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783688406; x=1784293206; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=d9Beo4a6GfwyHuZZh9Hbzb5Kq0VxcvFZ/EiNXB2jbIo=;
        b=Y10kIgkvD43uWuIgLPRMfbsmUGo37oyDEXvbsFNsMFUGO72D9mfZtNAuqKvmK6fmDA
         NG42ABmWIPfpC9xlhfn0Tr16IH/tjz/dbLNioRuuRnelghN/5csdUDiIKoAFk7krU8rq
         2meo3Wbrs3MnXakHHWWqDTm+hjDyQhLQi37GTEcgAV2h1HNcbyjKbH6dLtmgnyHzssxc
         jcFZmVsqvZED1Wsl/QOLDV8v290lqWLlwwr3xwsc+39om5bQVfhwwAapn1cwIsNQrPQO
         ZKBIgbXSbXr7Z2NTAHmra6p9x0btz1L+xGOswREK5FjR3mniDdzrpuao+qogh+jXPKIT
         sNOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783688406; x=1784293206;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=d9Beo4a6GfwyHuZZh9Hbzb5Kq0VxcvFZ/EiNXB2jbIo=;
        b=SFQKhEG19FTeEVDgPnihNzKKqf5VgQyvbccqfLY0jabAYzZOvut/e0hyCQDmltjzH2
         Wk7/q5DyZgxRUriJJvR2JeD0l30E7u7fIbB9pDNOR4AnDYV2/XE7hDXGq4qHzdTojpCZ
         rAtVV9xAAvZw9Zet41z5fwUX0M+/pbcmSUeIsP4ju7F0r9+x5CRShif4uBVPrqgiVINS
         Tc2sQdNdwewVUJp0xsZu+GdlDk68JQ5pNgZmA/XlFklh/gztAf1JJ5KpheflvXjMt0FI
         +VA5+FNsrCzccVDO2zfoRzDdZRwDw3xptyT56qQwZzptajlEVFNLqp6o206E307JACU1
         OXOQ==
X-Forwarded-Encrypted: i=1; AHgh+RoC2tLKtlTcJZkGWXuJ+DmpF+zwOwjUddCqWhRauNr9dm+kYx30gmmPAdtIHKBCe45Nvry1Ja8bbs5V@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8+ntAtyPP+0vxydmMgAxdu6abtNA15vvSiSGfmRRsYJxV0Lk/
	MKaybNlfaERlHXQWRAm/hy8Nz7BmOVfl44230g+DRX0guf2YZIAL4Cy/J5mNhduFttmSjYap6PB
	1RemIyDok0+pvh78yKSJBKu7j6Xh8RPbIgzgqVZMJl12wijoS/UuXsST/+tQTu36miS+hWdyN
X-Gm-Gg: AfdE7cnkoYU2nCOgg18TcDNMzlqG1cwrQGnfMQcq1xHnc4QNDF0q4aKr5t3TcbhKIJv
	5K2jgADcc+Pyk/BR19yC5/x1/C41vtmqVIVf22HkXeOyoIP3MVB0KZ9Mml7j83p0xZRtTCUiHoA
	LX579VkbWTq5HQtYIoSyRiHOK62h5lU9cydk6kLy03HRu899y9f1raBfOQWwtEl3h+eA1u0b/DV
	3MSLFA++YGoHPWAk1UqTMAET0NyiQ1hXkWnZ1UCZzYwHC9uMmYZvcmQPjop4krXkV45/BykFGBY
	fEQZnX08kMaLejGhfTm6eH1FtxDU2bhEJ5qRMjkXb6nUVWLpOdZjEZ7q/2EfdpqGLNdqZHTOlA9
	21nWwYN4XrSxNmUy2UTr1Vf5kP5xvi7tsORI=
X-Received: by 2002:a05:6214:5f08:b0:8f1:507a:ed6c with SMTP id 6a1803df08f44-8fec73525f1mr108514126d6.5.1783688406500;
        Fri, 10 Jul 2026 06:00:06 -0700 (PDT)
X-Received: by 2002:a05:6214:5f08:b0:8f1:507a:ed6c with SMTP id 6a1803df08f44-8fec73525f1mr108513496d6.5.1783688405829;
        Fri, 10 Jul 2026 06:00:05 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69a19cd88aesm10646911a12.3.2026.07.10.06.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 06:00:04 -0700 (PDT)
Message-ID: <97d0233e-75fe-451f-a190-ee0797d2b551@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 15:00:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: pm4125: Add VADC and temp alarm
 nodes
To: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20260710-shikra_adc_support-v3-0-ddc840fca0a0@oss.qualcomm.com>
 <20260710-shikra_adc_support-v3-1-ddc840fca0a0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260710-shikra_adc_support-v3-1-ddc840fca0a0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: C4iPAIVQ8_u0DH9fMdOIYZe9P9WLyABO
X-Proofpoint-ORIG-GUID: C4iPAIVQ8_u0DH9fMdOIYZe9P9WLyABO
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDEyOSBTYWx0ZWRfX+LHCJM2289QI
 4DvclnL5ZGPp4wHwN67QUvWK+jNqzs9W8YPpIfSLVCl43cmHVG+1wuAT+lntafDOQkuWJznZ4cs
 +MlTvdE74Ky4fi9RstPPuIG99BS6GTE=
X-Authority-Analysis: v=2.4 cv=funsol4f c=1 sm=1 tr=0 ts=6a50ecd9 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=SXoWBDIS_OCUn4CpEIoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDEyOSBTYWx0ZWRfX2lRBeWUoRLPV
 zoAfe6DxsSagdUyZE921IIe5rOzLKrIN+KHAjPZjoIUNVW4F7JzkzqCBctwrmhDpqO4AGDNhYCR
 AFfEavz75gwhTuKtbFfwGhD8eoUpyU0JCastNJ7Cq9ghytWGYtRzdX+kI89Dqlns546TXdIaN4t
 ehncSZ2bMl/1bZeuIp1IZYoIyledi4tNJBcHh5HSJgXpChs88H2a6DnY+BCo1bxSzDcd3l+GSyb
 BWPQ9p7NcjhwkvTpypaNzP+FJuAWGULkR97JxYOsTkoi19M4A0lU4iajj88Rk87lqdepIfCL6fM
 CxF7DN/EA9ha+Tzg6LcAgRtaIQIQ9qqLp870NAhNwDH60xX+4NmPG7B9cvo3k4LBL17Z2F0Za40
 TF0Op+gPHv8TMQ04IHXl5fiHhEU95JAZVo2a/ODXmcXfXqsPKBXQP8r8vPzwC73B7BngEllkm5z
 iQkwL0AKMFQrkUfJTrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_03,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100129
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-324461-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jishnu.prakash@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kamal.wadhwa@oss.qualcomm.com,m:rakesh.kota@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6BDE373B115

On 7/10/26 8:52 AM, Jishnu Prakash wrote:
> Add VADC node with some channels under it, for voltage and
> temperature readings. Add temperature alarm node, used for
> PMIC thermal mitigation.
> 
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> ---

[...]

> +		pm4125_adc: adc@3100 {
> +			compatible = "qcom,spmi-adc5";
> +			reg = <0x3100>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#io-channel-cells = <1>;
> +			interrupts = <0x0 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
> +
> +			/* Channel nodes */

This comment is mildly useful but OK

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


