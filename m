Return-Path: <devicetree+bounces-266054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMmtCCk7lGntAgIAu9opvQ
	(envelope-from <devicetree+bounces-266054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:55:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9381014A963
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:55:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C3EC3012BDE
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 436EA31A81F;
	Tue, 17 Feb 2026 09:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SbHFJkUS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dXSu26JP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F7E31A57C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771322150; cv=none; b=mGeWkMfv8JvWFumzaTU+g1UaeKom1XkVS8a7InvP4z6v+Hlj97z6mIABerab6gwRUY62p7HO4b47kpNoYlsym+3yVfSISkhi80QOqsAOYRKAkgvMmmJneRoAUc0MGEDZ30IPFryfG+IJ8KxTaRi55K68e6Iu+OJc963t68i0ijE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771322150; c=relaxed/simple;
	bh=oY+fgxVJMC1euNm2QqMaakLCgd2D21WoopvIQGCFI1o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tcFQ44zaS7+OnGlNCz/hNVzPI2lu+99+YQQmtCVswTZ4EuoREdC5mrZtlCvFhwbGGtXDOS8qlVup2hJ+qOd1MaVu6zXPCCMs7mNc+wGMLN0SA0TQBNE/XpvndZT5F44P0Q5NkVVNoMdBIRboLj2DBdWNcnmJeNbjWW1pz6jAh7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SbHFJkUS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dXSu26JP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GL7fIS1613301
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:55:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2tZDvB010DcisVsobvsm9FaJSN87LTi9deVu7cSebkU=; b=SbHFJkUSl8tWbq2a
	ek42CZLfZBMMeQFObaJJJm2NWJb/PwDawmTAUn1ripkYMMI08z+kGpVDCsl1r9y+
	7f6/VmKa0Uzopg5wyc6O2rSoOaDBUpDo8xMWOAOY9pD9pxTS0HZLpliL11LBfz2H
	XO9wZ5ZmT0lfqQXUi/KiqXvjCzDDlXTvTKtU/Ybw+mtE7FjBgFyOtK7deMBFKsMv
	hT24Srj/if8onSAXeUMkWz+O1R5PXHDTYIIBRqP5z87pZvCjmRH85qXaHLrbw5z6
	DnFVoPDiakPf8d73PS/TWGycR2Ia2JlAoonD64NImljs0Wnv37LtGtNzc2MBEna6
	GwBLSQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662swt6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:55:47 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8954937be97so33621096d6.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771322147; x=1771926947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2tZDvB010DcisVsobvsm9FaJSN87LTi9deVu7cSebkU=;
        b=dXSu26JP3qE6QRtTY0p4QeOnNMPUvYIJWUZUYB+JC4Byk3sDEXe/lFjTmjmH5keq+s
         +Z6eS0Gf4t2eMJOJ0q4eBHlprSWgmukPlijLc82YvhDpu25mM66Oq3Hd0c/j0IatE2Zh
         RT8fU9aqFKOxx2gMVXXrBxmvOznJJ8lXBGcNQUUn+LXzjmMrML78pwUrY1DTLU1Mxyvq
         m1Ceo5eREWgRrnECYELApJtUQnaTtzEz5PP+Q/KogO3NWm+2JFjhMCQOhY2ZmnTzh+nx
         ivo93vK995FNt05qBxR50T8OKQSEO91xBh9AcvB0UkyC/NC+FybOGfNiqdshXVibFq+u
         h37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771322147; x=1771926947;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tZDvB010DcisVsobvsm9FaJSN87LTi9deVu7cSebkU=;
        b=HbQOgLx0claKewNALbOf2S/OSmAe4pSKXcblr/jgUkK4kBZ2cwsOCmObiJ5bSNtMLN
         ICREe+L7cnkOevNjkcE8jLBcincDDoyhxSkklLHhbxJiIMG+r6bN9HvVe0P11v1LdP6E
         aq+I1t2zieZGZ06PvIej9kiJDZdl06QLb/ROpOUy3wrci/2OSjC4cqgPjy7sfO1Dm09o
         fjWxaO5TiE/dB6JaSUjauFEZGxL+0WdIUQe9vY+gDntQqQYp4HbeUWafd3EiP2Mk8u4o
         OWdQVn0YitS/8DvomiNQ8ZZ2J5C2lHQ+vthwriT4qKteeAhospXdei3k3pQmU0toEAg+
         DnyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9C51mr99WXCACK+fdPQAWJ9daZFxGIn0A1iro1k3NSXYqjYXKEXxY8HHc46Bn+Y0VdTKzGT0jKazS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq/qMPHkkUz1niIU5+9Csodd/FIKxlNQ2zFrVIiIj0K1JN8bau
	EWIuuFYBpFBZSFj7iosR0F15Vgmp6ozTmkO/4PXrWVJDZRJ6FV0ti/AKjfQxOluXcKoB8tf4r+x
	1b0/S7i3MDL8621TafQSNamsydSAEKw375FbDDpIR06W6BxLWorKJM556eLJ0vjWd
X-Gm-Gg: AZuq6aKP8FDKGcc3SrBsc6xun+l6uEQb0sJkVXSoUnRpbEEemyMMxOA0ar9S6/ynf9Y
	drakxQULY8nipyxaGl4Q3GXejBYE02ll5/0Q2GbIHpC/HCIG39Vame1y3vTxYtKQ/xz614yw7as
	l8YRJBl22UsO0re7nIak1NRjMituNDnr6FLU7RrbbFsrUKblgVax0L9J0HxgBDs+6gJwVxuu1tQ
	ub/rURRAi9e4si/GOPMUNxoNFzaIAvVqp7xk4eAbU/HLu7ZAN3zuJ6DjFc/9zfGywqEs5oyzoMe
	3xxrE0BWQssV59R0aHm9HxMIJRWscxylu9R05soeUyWEqvXG9dTPXe6eLrXBUzZsp6ptto5VY4O
	XPb4OeS113lhlWflZaBDxpngZtcEwSQ4qkekVFOlTz5GaYj596f+TaaVHt59QgiCyhV/JeA5wS/
	c+r84=
X-Received: by 2002:a0c:e002:0:b0:895:3b2c:7708 with SMTP id 6a1803df08f44-897346241b8mr139028396d6.0.1771322147203;
        Tue, 17 Feb 2026 01:55:47 -0800 (PST)
X-Received: by 2002:a0c:e002:0:b0:895:3b2c:7708 with SMTP id 6a1803df08f44-897346241b8mr139028256d6.0.1771322146770;
        Tue, 17 Feb 2026 01:55:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc766459fsm343188066b.45.2026.02.17.01.55.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 01:55:46 -0800 (PST)
Message-ID: <6d7ff022-f2d5-44b3-aafc-db64af4c283a@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 10:55:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260213-fp6-hall-sensor-v2-1-ecd113d4919c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260213-fp6-hall-sensor-v2-1-ecd113d4919c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA4MiBTYWx0ZWRfX+fvK/NhymhAe
 FTtgfzPsmTJKsyCWkFCA+laTHcMPABFVtB8LPN/Tk7oX1Fzrb8b6vgx7zuXPmn19p5+M8zAg6xj
 HgQN0HazjqtSOFmFwRifdF5ha44i4Lls6aWYUNFigEIoUhj27hGYdBRScYdA523SW47AOTPZl8U
 x9x++dS1UaOFxbbPVujriE+VXqQYL+4LkK9N2WV1fIgcBXZA4OEvcMcBJaT4Es7vIdJlBto3IO9
 If3GzCr70DSEgL6aaE+iAfXIg1CRtvQ+OG7ZInQkSGoq7ZzihxDJ5uJ9vL8ztzk1tipjLglNaRE
 uySwok9B5mplbJMb6CR1snzLkYJNBt1ix4Bc5KcvaCGBTXLXPXelPXXs3n+RzMByFV7sauAGvlP
 4loJfaPkHsa3VWhWrZ+3QnAFJoH3tw8UG+fNU2BEErn+7aRzt7aUDCLuAHJeDuy0sCpkhWDyDXy
 H/qOkamzo4PcqmCwCEw==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=69943b23 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: _a7q4o4rUErgbv7Y4LtAj5ON6-nh7HVn
X-Proofpoint-ORIG-GUID: _a7q4o4rUErgbv7Y4LtAj5ON6-nh7HVn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266054-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[fairphone.com,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,fairphone.com:email,qualcomm.com:email,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9381014A963
X-Rspamd-Action: no action

On 2/13/26 3:21 PM, Luca Weiss wrote:
> Add a node for the Hall Effect sensor, used to detect whether the Flip
> Cover is closed or not.
> 
> The sensor is powered through vreg_l10b, so let's put a
> regulator-always-on on that to make sure the sensor gets power.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

