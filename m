Return-Path: <devicetree+bounces-265708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG+rKRj+kmkn0wEAu9opvQ
	(envelope-from <devicetree+bounces-265708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:23:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6B5142DD9
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:23:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0AECE301ECFA
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13C48302742;
	Mon, 16 Feb 2026 11:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g68PPAUf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VPLwW0LS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2A326FA6F
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771240967; cv=none; b=ODTaAtp0tggyRxdjY67loVsKPOfZoFapJTiluTn71TRVdpumghevy9pklsLbxPVSqflaCRn3WdcL1pJvb5+tAs8jstKeVzTbkv1dPpDeSsiwqOwgCEf2lIYsKtWzyCGf8/T1uiQfohmf2YLtmuiRpmpqKA4R5G++88EyynSJNVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771240967; c=relaxed/simple;
	bh=5hrACRB3hDD/pJ6iyQ3N2YU21gLCUgwHaCLqdNhwOW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BIPETuYaL23Io2vCkJkCcJTphlZcLnaebGuuIYS1qY3vfwaYGh5vUbY6Vz/TMfs4h1NMVaXgrrQBF3lkmZw4r2yz0VCI5RNij9q02MJUV+dHAB6ZiZO9X0yHwtJp9tUrgb/cFlGHAmXztorwyIlMWgUGNgIqlq+wcp+2VEvyBLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g68PPAUf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VPLwW0LS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GAXFZv2106412
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:22:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	45igm9hsNPxlMn0CSvLm4f2gzk0L7UTXPG9RemyqqCE=; b=g68PPAUf+zSq9N57
	zIsgbfXqtk2iiFfIYDrxxuDesHXmpEkcS9YX1h+qc/khxYqX3L1AgNuy/Ez1F4jw
	QUGF4+BKXYSXl2pZSVyrFQw5SAdJ9UqGdK13lkh10auka9bWA0tpH7MWgKhmyYjy
	G04DzfpUkFFkGwdBAElaYsHwarGcfyWO4CwjbtpWuuQFazm7UJ9QlSq1btl3W9J9
	+Tl4/cusMTe9SaWAx+Cqu/tpAsVAuXKAo7NuroBFuVo+1e3xBqbh30Ir8Q/iE75g
	jPMumEQm8CyAZcNqJ1dzPBGdRsUzLjeslktZy5mOtKS/aWQL29ZzoKAvHl4gbkwg
	0WL8MA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cb6bujkud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 11:22:43 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5064fbe2babso22443391cf.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 03:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771240963; x=1771845763; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=45igm9hsNPxlMn0CSvLm4f2gzk0L7UTXPG9RemyqqCE=;
        b=VPLwW0LSxB3WH7NTqv6jnzMym1yqsGLO+8NBN7CMwIsL36B6pEJBWD8AckSwdhfiuR
         ED6NUAW6r6dH24T1O3NBI2dfG/gqMT+xMjxq4VTfsIwSAOCG8rhYFFi7f1Ft95/PB5tb
         HVVNUb9iroTzWkDxPLE4I+xD5d7ORDkH78mKNOiNYvEnwOGitQbxxiyicJYxm3tPQd3v
         1e2slzb5dWEATfMHUcn4zY5hR8031tKa9Hk1TnjoSjpjLkcLkOtbz8+dXhggyJ9FhtNn
         gWYosNBaOSkUJp2qCzZVVH9aak9suwTtn4ZYMcVHPSsUhUzZnATc3VjzZzbAR0ruTDM5
         YY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771240963; x=1771845763;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=45igm9hsNPxlMn0CSvLm4f2gzk0L7UTXPG9RemyqqCE=;
        b=NczggRZckNAuNKFcNZGhRwvKmpQkBLUfjrFzHxvkDSHjMOjA5AZGy1TLTlVTDQ2tk6
         NHJOi8+KurYCaErBXOuha+3t5dVXHm8NeF1NUP8eGyduxCLES8xvr8kBOHpaycZ0D8nr
         Wu4v+fawvVBgJ3eqt0OUZW5jh0zJOLiNKGv0IhfJSxnACh94qKJZMeSiCx+qwX1f48s4
         CYvX9OhFbkRWG0HAyNg4GkX9Qn3fZPXTAwcR24NpU6hiQmXtLYxRMM/+vLmyw3+9Kk+i
         MHY8VXMAVnTUPHW2DixzD6kiIYWD4JMh/qYFui80Uy63Vp4VuKdlYs4stlA0zermnJ5f
         cTiw==
X-Forwarded-Encrypted: i=1; AJvYcCWqE/7b2ElMN42YsaX/qppi2JPoYBnLmVpWg0e7REfPw+osUNYJ7cGB+6OpEo4C2Wb8NP7OPjYKPtFm@vger.kernel.org
X-Gm-Message-State: AOJu0YwLcpHAquAn8zwXxdGlWCDeb1lyDRG/qbbMbBx1qju6RgdYwIfP
	Zb8nw9ZJbVMi2YCXxQEtgAd7CsaVMoGskokEo2sJAVr+95oauCPxDtYkGPSao9PdBcEFJabRzDV
	gZolrKWmT7QzmMat2gx3qmgiMOZnw0IGahguWFLBFM4l65cdM/aVZiOh62NxcsWU8
X-Gm-Gg: AZuq6aLGUHrXThm3+B9G+UujSKsPd1S86Q8PfrfR7MAB46Wt1JslRjpR0Yju28gogbg
	B0B9vmWtIoGHWUnjCwMw5Fus+6IQz9Flfen7YiwC2VuY+IDsBRQ4mQBEm4smW9AjMSldd5G6mlZ
	7ffHrvKrWEKfF7x77hxZnGnbGReiJXxb1WRflInWdhI1mk3C/Jw4CZHksAD2dWl2bGaRkFqBZIH
	6iSP2Xca27y+E8fuyd31jZGzHwpaBKd7dOUOzQ6nfFM8MZkao+Y+cnCQBFVvHY6WaJukAfNm+tH
	qV2kKzdGjUne7U308VdWXs5MhS2JnpaNx1DUzLrutX8h8DxjOomuWPiuCmwIgP99so0TFMdc4UR
	cy7QtnwTBpU6GsbnEnhc+FDHd5L6CVgV30m1KHHroHxS8Gl8+gXfaEZwmmU7UtHOHNJENhEBeXH
	wjywA=
X-Received: by 2002:ac8:5890:0:b0:4ff:b757:1210 with SMTP id d75a77b69052e-506a661e8bemr101174141cf.0.1771240963005;
        Mon, 16 Feb 2026 03:22:43 -0800 (PST)
X-Received: by 2002:ac8:5890:0:b0:4ff:b757:1210 with SMTP id d75a77b69052e-506a661e8bemr101173891cf.0.1771240962574;
        Mon, 16 Feb 2026 03:22:42 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad4fa9absm1827201a12.30.2026.02.16.03.22.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 03:22:41 -0800 (PST)
Message-ID: <37ef3c4b-3009-4f8f-a109-a04f6dc257f7@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 12:22:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/2] arm64: dts: qcom: lemans-evk: Enable wakeup for
 primary USB controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260215183325.3836178-1-swati.agarwal@oss.qualcomm.com>
 <20260215183325.3836178-3-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260215183325.3836178-3-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: IbtntAhWSH5AuIxTdOfI7C_O5dwViYww
X-Proofpoint-ORIG-GUID: IbtntAhWSH5AuIxTdOfI7C_O5dwViYww
X-Authority-Analysis: v=2.4 cv=M8dA6iws c=1 sm=1 tr=0 ts=6992fe03 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=HJ4sy_SFjw5f8Q_JKwkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5NiBTYWx0ZWRfX30oqG/aihixv
 AlxdlSydNDc8Ox0VqC6C0ZAVRs6T1+yWWq7fyx1QssqOTgI/KuXp9Ly/FStnUGNVrAHr5ZV0jAa
 KysOalDT2F+uQUjYX8qyMd56p38t05uki0iIfp9/4bePECLve33E1qbjIAyeYSyRRjlKIOWj1TK
 jJ+yvaGvAMTDzJBF2a9DyjMDnWoVAl6x7qLseeCok/spXd4ORDiUR0PBF/ngxGf+wJyK2SQYIHg
 QshU0biRRB0QgBjgg84vQEpk1j4cPm8hu3BDX6d/+DoQM2Bro6ajkS3/RIOZ/Wm5TfenVckhA/V
 KR1xYKPel4eELDMChfVT8A0hYHwNpYBEfeqwg8qEdtS4iwuAcAPlzRTM3dFgro8uBJJNhhwlswI
 CBDTMdD6pLObo41fRIiVGje1WyAUKf0Qo0/jFyVyPr9NpICCB4wS5RKyUynZzRT8ScA0J+tkTId
 AtaKrbW69u4fD+ZDsSA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160096
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
	TAGGED_FROM(0.00)[bounces-265708-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B6B5142DD9
X-Rspamd-Action: no action

On 2/15/26 7:33 PM, Swati Agarwal wrote:
> Add the "wakeup-source" property to the primary port controller node so its
> interrupt can wake the system from low‑power states on lemans EVK
> platform.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

