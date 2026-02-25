Return-Path: <devicetree+bounces-268301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GkpLsjXnmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:06:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D201963F0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:06:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4ECE930E0067
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B396D393DE3;
	Wed, 25 Feb 2026 11:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gj71Lqmt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XZTblnAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCA73939C0
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772017374; cv=none; b=fMiJ8huAcWWHbviSfjUuMO4/LWO/r5ACTAzMuTZb1FdoaVsZRhk7cI4zHO77/OdOPtuNFuM90pC4ddKrmCLlTuNXvqOsd1mwPSDfOnf5j+dUdRWJKHD7YCBVRHKvRQ2npfjRlCNtxRkBQ1Ua3DxfKa9+tWuQXojKT+fasU5CYoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772017374; c=relaxed/simple;
	bh=lnvdGQuYIYU/ilpY/EUNjqA6cJvRcAVJR3APF1T2dRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=htL9eQjtxWYQHaYRi0YKbKRWljkjkXRxYCgVlDYkUelmlMPZ//5q3OI4ndXU0ol8uXQg+x0pZmso3N1eDjYh3v63eUKpo97K7GPSMJLJkBlLpbNc541+kIhR48Zgp9+xav3hmGUu4yphU60cOvafDpwWsHWgOIwf8wsfCYRZflc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gj71Lqmt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XZTblnAb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9Sp9c229695
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:02:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TCehKZ3CTAFQvrgMAIAtSRO7mBHF3+IpN0ZUYoyGgrc=; b=gj71Lqmt+QsOGcgr
	QT+C7TeAdLB/L1JHGqTi8D/KxWELRfsdmDJmi3LQ4jfk7jgJXAfoR3jMEiCh/A4p
	IuSEij9RaDPh5u+qPfjaRs11yqB0UUJTpgFu1jbCheoIicN87s2qN+RDVqDjRBTM
	W5B3X6WTUhNqG9MV4UzwVpH8gY+JaG79UGHkHcXtQ//rcdCTpbor1KCxTjG/P5+V
	IMnJwfSUCHYOgKKtQ7dzF0ADhUb4RDSKNgk4OJzmw43W5VsGM6t9v+hg7J0ifRB/
	a+aYiKW416s9Fqaz5ODWjtPmhEOfVUF3bnS6KKHLaDF0dd+/GsETlalDakED6/07
	BVcTfw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg37u0he-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:02:51 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-896f5c90f07so70361756d6.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 03:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772017371; x=1772622171; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TCehKZ3CTAFQvrgMAIAtSRO7mBHF3+IpN0ZUYoyGgrc=;
        b=XZTblnAbD6Aei6NcOYHcymsqtCe6vcF/sfgKIr/bPdSJpk40jUNQurQFBrFYUlksWD
         3isKJiAI8SdVg1GDgZUugNxFNKflwsal6zQCEwNdh0jgc8Pe7P+CmTLddq5WW+xmDJRx
         SGBOdTnisS7i8MGlEMb0CI4cob8VY/dl0dY+j4LWpu0QIlOBQVsLTcgV9BtRpP9qAkOL
         pbub1Bp8oX5pzCREixYZ3A3VxRdwV1M8x5q/aunb3KP9qtjMKLoznDbFcTGOEhkgjf04
         xew8LuJMflaQd8MRv1pHhI2tcJs8FKxVOfDGuO2v92cOOPprRrvaBmt2RKFn843yG5gl
         +gPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772017371; x=1772622171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TCehKZ3CTAFQvrgMAIAtSRO7mBHF3+IpN0ZUYoyGgrc=;
        b=Is2LxrroCnXF/ZKSHfq3mwAIzmfatIhpl409ZU7FVvhJgFsfuSfpRgjIi/AzunspwB
         jHgCAgWP5nyRiNE0bcxF3g+03nycz4zEzM5ogCOxupujhRq00AXrWc8MWy5FPdlm9o4D
         d1/UF75SyBpuN/V6G98sA2N5jXjmgYd0TIXQrfQZ8hiQrcRuZJY2c76cwTGaFQWOm96Y
         JpZRy9oR5ttY//IWvjv7hJSTEl7QSZbJv4SHj6HXlUliV04u8bZJOi+jv8Gq9O/jBQTx
         zXHGGHZC3sm7+W/3nXTIdTVOxOOvammaA+IdOOR+XhiXivSLEm461Z88BR8OsPfle61i
         2wPw==
X-Forwarded-Encrypted: i=1; AJvYcCUAQJ09lhCM98ptzRUUcWdz+6e0zd/eLSRz07gm322qBqtENx9pL+ZklXWxelFCeFMPYN4FOIgx4AMF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw93/C6ntNCXnLIi9vNhCoSUi9L43V2SRmGSICv061VU/tPjAN9
	UR6T4rTOig4U7As6/tV5J4TcSd/5gj0szT/kIqvk6nHNwrAw+9/Z26UK+p9L/MUJay593+PN7wF
	DOHDOfw3XScsKwiQL4s+JRXrfuT/v8h9Uw9ndgRiXXjkhtFtmEAdn8Pn7Q6iaGqSQ
X-Gm-Gg: ATEYQzxKxQYl0SrYKG8QHHmRLcin6f08/ykU9exTdTNPr7ZZ65Q+3LL++QzCiWx3YGK
	s4ht1djEM8jgN7BsQhSoU/iv1zyiIlg5uZyocpi4w+r6iL4cddB9MIdklqx4GqT9YNM62ZSDa/L
	Dp2seFr8lzkLFpHVSsJtA3K8ChE4xDVUtxzxQQ8HKc5DzGlNbIvPj2SLEmApMoj/z1QKohBGyw7
	9cN1A2ZtBrJXzsAxUMh60YUj7A+8l7y3Jx3FjcKquaBxYKpIMgydvdZIHWfm4427DBgCJkERZ2U
	s1E7tb2GxMrbmjTuv/q5qE8CyS+aj8Nz7FoJo15sNx1UIf5IumIjydQsTeGTSR+upiu/h+g5lA9
	nXZhjuQq1zF+RgH6Moj14M58Tk8GdFB5KxKJ4saQgtzDipxNykI2GQlbBMABfCjv/DrSzF7bjB/
	79utQ=
X-Received: by 2002:ad4:4ba5:0:b0:899:af95:397c with SMTP id 6a1803df08f44-899af95776bmr29743286d6.8.1772017370963;
        Wed, 25 Feb 2026 03:02:50 -0800 (PST)
X-Received: by 2002:ad4:4ba5:0:b0:899:af95:397c with SMTP id 6a1803df08f44-899af95776bmr29742886d6.8.1772017370450;
        Wed, 25 Feb 2026 03:02:50 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084c824e0sm511254766b.22.2026.02.25.03.02.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 03:02:49 -0800 (PST)
Message-ID: <5617b6ec-b1f7-4f3d-abda-d7142c323759@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 12:02:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: display: msm-dsi-phy-7nm: Add SC8280XP
To: Krzysztof Kozlowski <krzk@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Tianyu Gao <gty0622@gmail.com>, White Lewis <liu224806@gmail.com>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
 <20260225054525.6803-2-mitltlatltl@gmail.com>
 <20260225-analytic-economic-parrot-4c3a45@quoll>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225-analytic-economic-parrot-4c3a45@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=br1BxUai c=1 sm=1 tr=0 ts=699ed6db cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=pGLkceISAAAA:8 a=iltczeOmeScF9XLDky8A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEwNyBTYWx0ZWRfX7vdOTiViklvQ
 7zUHZXsYen1QsBUT5n7c3anY0+aeQC1SgHmnwRHVLI/K1BUnQ8g4nBFXko7ItpyoJxQiYFiKfrc
 xSNt4R+GxWt8OcO07iov4O9gpXwDADtXc8eGTsRX4foDzMfu1woS4kmQJQrf/PlvFuGCp73VsR1
 Vb7WX9nO2ZTo4kuX6GJvmAuYi+23rfi4pZlFoo1boynf5A6MWtlQouh2JfuTX/kPBVBNl7LRuVi
 06VXJyIPPPAneOHJm+kzU1EvNFwRpN9fvt09ZNuAk8s8bDEh5uK8Ron3TAa06Y1GlFmA0gQeliK
 bB8yJIIHvDH8vZWyiQypIWmLkxj8uDaqJkEKVFDmzmGP+ARuPWDA0UVcqXt1lsgnsDGGW3ypw6b
 j5u++DlYQSut6x7tsOCoT7e4hNfJNaWMBGIq3Qhb9jr1kwRYABgmBeU7HMeER5WIXl5JNfQqznp
 y6MziUQl9suU/VH3jtA==
X-Proofpoint-ORIG-GUID: hbSsGYfpMe5JSPKID4RRYDJU9ujz3GJB
X-Proofpoint-GUID: hbSsGYfpMe5JSPKID4RRYDJU9ujz3GJB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268301-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 10D201963F0
X-Rspamd-Action: no action

On 2/25/26 11:24 AM, Krzysztof Kozlowski wrote:
> On Wed, Feb 25, 2026 at 01:45:21PM +0800, Pengyu Luo wrote:
>> Document DSI PHY on SC8280XP Platform.
>>
>> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
>> index 9a9a6c4ab..9223af1f4 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
>> @@ -23,6 +23,7 @@ properties:
>>                - qcom,sa8775p-dsi-phy-5nm
>>                - qcom,sar2130p-dsi-phy-5nm
>>                - qcom,sc7280-dsi-phy-7nm
>> +              - qcom,sc8280xp-dsi-phy-5nm
> 
> Your other commit claims it is compatible with sa8775p, just like some
> other devices here.

If that helps, they do have the same values for the REVISION_ID registers

Konrad

