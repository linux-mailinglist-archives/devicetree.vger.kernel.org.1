Return-Path: <devicetree+bounces-274910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BhlLCi0s2lYZwAAu9opvQ
	(envelope-from <devicetree+bounces-274910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:52:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A4527E5EA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:52:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CD5A73058632
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B62682E2852;
	Fri, 13 Mar 2026 06:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kWtPM5Yp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dpNsff3K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DDA1DD877
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773384085; cv=none; b=jZkf8SNFz9EehAljeQS8d752nHf+7b22ffk7uQA4TwLC+R9QxqigJ9ht4Evw0T0SP+Z+0ijn5Tff3UYPGotg7cEsnyDsPEvNU9il5A+NnlAkZEen4fNEbaCb2BfPdXFDP2Ko9icPWK8b54dii+hHonKy5mX4eCF7LyxcBwNnCxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773384085; c=relaxed/simple;
	bh=J+MZmNAtVunpM3afd5gP0yBCjkR44M/3Bz0bP0QrtQk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HLnzQ44DSxLy/FBhyQRl5bVk3a/p1uTXB8xlMTgmQ1YkHN/MJCaRtN+XbVv4l3GSsOQH6v99h6j74wEm/LOVoopVEv8+TMR24/A9+5CulJkf7Me/i4zDNgaKNwnqtaUnC4CA4reJo/bpQgyPoR5x6SoNyjuys1OrNKEDQ1pkgOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kWtPM5Yp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dpNsff3K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5td3Y668692
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:41:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c7QXdJ7tj6E3iksFvgUS1D03C6SBD6m7C+J8f7QOP1g=; b=kWtPM5YpcsE7Z8lc
	voXZXHq0pORew4G2cHj1nXA1X3vl/tcvhzCzimYzPIlodM+UvKue1aM6wUP8YwTe
	w0aFHuSHcLaYJbleqG/Mp3/TDzlercXEXzEo24IXo/oi49BkQPj3ZLgvRfghVCX7
	clntxB3ZoL0NO3cBhp1TUQ51ejRjBwkuLlL6J8WSrBa36LU1p8+9iZi0lR1bsyDZ
	5MCguRU12LsZlycT0dndSaCcwo7J+s7ZeohyYHhQnFhqGgTIK7l2fUP4Dl2mZe51
	0FS4WPX5+5YtN/qJe8KwtuBn0rm/6d9bkhvSPBn4zNA43olwv5XII0/NBj0eCWSp
	PDSvow==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh5q4vmf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:41:23 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35449510446so1485524a91.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773384082; x=1773988882; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c7QXdJ7tj6E3iksFvgUS1D03C6SBD6m7C+J8f7QOP1g=;
        b=dpNsff3KcwmE5vAxR5dMY86wnmuPaiMbLoUaO2tFvYX0YhSPa3PMrKwFfwUGkcRrkI
         gbgCAU+5dTSEWmbK05LsWnfLadxWaBwiOGKOYeY4FxJqXVohEj4wwvP497/ezYZ6e5gq
         VhWioV7we5I5WjtfUEx1kshbaGgzj16BibevxHPIAHTdvOdy/nfuZyypFJztc0LL6+1u
         fam1q2jAAKYshXtIrVawm5WTQSl7NvD5tgh4puFGMPxUshDJ8r0/BYePzlFekB5Ia4G3
         5YL6Y+6rruwj1I+Tz2HkDypcwKhezbaOpuM9Y/884JzANLGOeznLLwtPptHRGGnJDQwl
         fZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773384082; x=1773988882;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c7QXdJ7tj6E3iksFvgUS1D03C6SBD6m7C+J8f7QOP1g=;
        b=jq27bw+MA9V0uD/EAYMsu6OjQTbLW1njcSQHH6TGxnaBmX9k9os7ugnALnsqVjBY7E
         2Fo59wQbVzn6N2UdQphXF+b3d8hbwp95sPkwhSZ0VgxuMT5OGIMOnRCF4wQ9fzugie+s
         HzwXWEA+ZWkl3tOODNKW7z9LJCOFHh6HhA/N/X5g/1GspxSNz2OGHScpRLagqciKQlYt
         fAKlpf35XXDhRYJqwDkrJdQ+4NXvC+uLx2XHTFZLaf2XrkArI8m5hlXoqI170Q7TMw2b
         Mdhc2iLdQvjgkmdp2P3++QOihTQ+qsVRGKwY0QGX9QFgYEH9UGjDKiTiw8Hw1+EaHAv/
         ebXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYhBrPHIIT7QqlvG9wn7XQyIze1lQH4Y40vZDbIQOIf8fPQxR3yXKx2edLUztZnQL3L8xE91CKMVOi@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2qHbN6hgYdK0N/ocefFt6AXw8vbfRtFHrfg8Lv8M2nW7VkihV
	IJIbX9bosU4rabYlTWzaI2zzhDHgZVPk1tuqq4W3LF0x+0bNW8HF541V6qCMWI6z4gbO7wA8xIy
	XKZUaVu/+o0UYsMKxl9UcmRl+jXYlgqQAb09l7tZXxh0nAdJzx2BBo9mcqqW0qlLg
X-Gm-Gg: ATEYQzwyNmirf4ZVqWgxXduezSRhV2S50qw5J6/Fl6zw/nxKZnv1PFLgXHt8dnnJB6j
	9AaaJl50H/sItzBfSoblgUtjPRHesLy+FAF7sOrSFCf6qMI4MFi3jLwpYvNB8Yi02rtjbSJBCRD
	wkvmE1/w8e3ofEK1bfTisTDNGpcBVXE9OL3vy3hIVaU0AAVEHny6EMMY5xKoeStpkCauS+fIiFn
	Iv5AWKfF/NPgVeabO+ZnAKKb0RcfBWFiDIg5vknUB3VqTokIlm/M6wjId2ja4NieVAHwESKwhCH
	odlx122vqqTbjz5Qk8Mf6QJqCtNQ84tLF2aPe5eBj1bbQ+5D0k4RDwAvxHr3QCniVZGrHQWD6km
	v0l7G/9kjLtJVlVtM6ft+NDGiEA5ptcjRbROCIN1tvezuM6iy3Qo=
X-Received: by 2002:a17:90b:5284:b0:359:1063:6aed with SMTP id 98e67ed59e1d1-35a22003d20mr1794119a91.22.1773384082485;
        Thu, 12 Mar 2026 23:41:22 -0700 (PDT)
X-Received: by 2002:a17:90b:5284:b0:359:1063:6aed with SMTP id 98e67ed59e1d1-35a22003d20mr1794098a91.22.1773384082022;
        Thu, 12 Mar 2026 23:41:22 -0700 (PDT)
Received: from [10.217.198.242] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359fc97356dsm8652522a91.8.2026.03.12.23.41.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 23:41:21 -0700 (PDT)
Message-ID: <7f834a73-b482-425f-a1ff-f4ee7415c927@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 12:11:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: x1e80100: Add deepest idle state
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-4-760c8593ce50@oss.qualcomm.com>
 <5iego6aoed32zjkbs67tfyi4df6almzain7fxcgll374maazyy@w6icqysf7oft>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <5iego6aoed32zjkbs67tfyi4df6almzain7fxcgll374maazyy@w6icqysf7oft>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: pl47BunkAzxE8vMPXe7FZuLDjzPOCmpT
X-Authority-Analysis: v=2.4 cv=CIUnnBrD c=1 sm=1 tr=0 ts=69b3b193 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=XrqnnphpdDpjlOXJA1IA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: pl47BunkAzxE8vMPXe7FZuLDjzPOCmpT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA1MiBTYWx0ZWRfXyrx8DXQAt0k9
 aqbYdL2qQUqst4LUkh0Px8oI4UBdqREf6fNceRgNOCoIB4qjeC4xrrCpjSJmMF8JqInZcxdLu0q
 t051wO+PVht9Lw22vOMwRob4jKts+y5U90CK7NL5RwBwDDaRAiMnPjdVpE2niIUjTVbIpyQqxKF
 7kxu4KXQ82r3XY9/OhOCasC3BJsvF1MJt4wvWq+4O3RVQre5nFFPB5EKZZyIl7NbyeXw6fKLU3D
 NtUfdeOXwWEbIRoid0CeZ/eeg+kcKZNTufvpc2cMixetCWToRK5A4qR//dSRM4N+u7UMYeBtlnK
 au72y7ESozPt9cAadzEfLSChafEgMpAQByQRZTjdKWbvpdPxFP+3WUC8P2ZOVv+IpPNGwOcNzDu
 hlakqmnQWSVjX5V1GavPVDnl+/hkNECYtiOog+lpVMqkGQoAa47fQKGpgLRHZ5rw3GtUTbPyB7I
 hE6+bkZQUowNHCTqZlQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130052
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-274910-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B9A4527E5EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 8:00 AM, Dmitry Baryshkov wrote:
> On Thu, Mar 12, 2026 at 09:26:38PM +0530, Maulik Shah wrote:

>> -			reg = <0 0x0b220000 0 0x30000>, <0 0x174000f0 0 0x64>;
>> -
>> +			reg = <0 0x0b220000 0 0x30000>,
> 
> As you are touching these lines, 0x0 instead of just 0, please.

Sure, Will update in v2.

Thanks,
Maulik

