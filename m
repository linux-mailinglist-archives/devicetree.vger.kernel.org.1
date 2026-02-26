Return-Path: <devicetree+bounces-268888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJ6aALhcoGm3igQAu9opvQ
	(envelope-from <devicetree+bounces-268888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:46:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 651391A7D2F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B0361313225D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88CE73D647C;
	Thu, 26 Feb 2026 14:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OIP+FHML";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BKHbHrka"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58962389446
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772116672; cv=none; b=kW3EjXkP7D/DyUn9IR9GVnS0O+TMIQcCvl8qC7fXACVB6XGf2bCYBEamDKF/OqLwzlNeY3l98+LOUIYMyXQtYjZGGGvKL0LLnjnNWIrbLmUK+pR/E7d/oE2x0AgzALaSvnjwX0aOZGnOIC3TGXkUcmB3pdYmhC5kwRqj8e4kpIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772116672; c=relaxed/simple;
	bh=2g68O7opv7WM3JKoSDQS+/MfwdBIGS1lfiSUXEpO9Ac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BOkxNUzkbSJkZhDH8RcOe1FDc5l95NrG5xUI4SabqmC0TEY7Uy7npQeyiXZDrbSj+qEPXPEB60UNESI9TcwOzHN0lx/sQvLVRrEhPyyfgGzr3Z7hPtw5DCZPrm8TKG6DKlZIL3OWuWBDpe8MOIJomHKo5IoyP8xwuTWKt/mgEgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OIP+FHML; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BKHbHrka; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QAL4H23747745
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:37:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MGCOVaY17Ad9+UUgzh8TP9K1EA7s2p63TnHnE17GZUs=; b=OIP+FHMLn2yvrtF5
	+ewAYmby+R+lSHLNMgAEeYyOIx6mq3zMIWdCGDRCizVhuYpt2OFMdF2+GCpJGEaQ
	SobRXaCUckNuM1dV0/iQiFYyk2eW8UCiR2/gDLMCue1nebLg16XEANd9AGwgM/Vb
	awvyIYJ9wF34IEdPWpw4T5kAqw+yM7f5Gso7SPf7jluXGuCBvm1t9Pk4Ll9WDDZa
	zRVGmkDkIgu1aAso5i6Kwbkg7AmZH7nSJ7b1BxbZ6GlSWXlzE8FieqpO/zTEq1Af
	qRTsWU2dvT9Ce/4E8QTRrbD4dIZVMnKXKQutcMjzDkZvTq/zBvN7Gv5vtNA7H1O7
	PtWdqw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj559kgn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:37:44 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb399597fbso58473085a.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772116663; x=1772721463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MGCOVaY17Ad9+UUgzh8TP9K1EA7s2p63TnHnE17GZUs=;
        b=BKHbHrkaE4BT52sZj4iJ6+I6IcAVdfMPPXCeCtCbx/kemPXJgjMnea1tgG3uQT/r+e
         A1xIoP6fPD94m24Mtt7QHsaVqps1ctk/I/EwYiKKLmVUkygyeNuGVcoeovrcMq74kfr2
         eig/bKE5qOBqPU+jqwPU97dy93cdnobkLmh5e8ubOFwXi4Ubqv5asg78L8mW8qomF43v
         1WHNdxCsELkVT8VcFCUxo+bjbUvCFA6pNwl1PKVMDm5EXJIKphwsTqaGmsZqblGF+CVp
         guAILmLIATgCAzPQht8bOZhu24eJnlkrFNmJVF1g96Njd75N/4MJc+vGxBX64bZDCAtc
         B0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772116663; x=1772721463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MGCOVaY17Ad9+UUgzh8TP9K1EA7s2p63TnHnE17GZUs=;
        b=w8Y8zvrd45V0CpM60Wop5j6xnif2fZGCmm6Vq4aJj4Dud0upBLekv3p+j2t8dPeLdd
         xy6DSJdLUoOLmOlPiPqwRjQYGInf06/5MsC/8QzJV71DwlKVb4/VZ3tC/dphULbvvF7q
         1RmWIBZvQd3frKS7JKdoMCm9d8SYAw1uZKVMrlz5C/NzdTVPL6+ATm1j25RbtNvVgITc
         4V45HxxAszy0c2KSB4iXJUJ25jaiGPS4bozGgxDqLbe+QOkC5ewYAfUMJGw874g4veWu
         oPtWU0AcQTY8n5YT86okH455Cy8vbLV0se6mF/CCcT249bGtIq2yY/IZogl9xaqb3GZN
         e9sg==
X-Forwarded-Encrypted: i=1; AJvYcCVO1MDOxrR9kNcCm6+s3wAW+dpdYkHddPavcJ/P+cyNkpgkMPAmsq310qiR9paT6+XEnk9S0J9A+sbS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6IwfkIOold42oNwlQR+Tonbv5e+OXRRzt3DYjOePPnplf+4q+
	Ps6eCv5QMtYRUSldSh9h/H2dRoFzEDd/pebs3vu9DnWirhth0lezPnlqlRlmXnCGRutV/9rDn5/
	6kJsQB+TpjxElH9kskot+o4Sp54rafyHTptSsGysr/xwjQN8EPR2SvPrFB6jFrrHP
X-Gm-Gg: ATEYQzwrAnVWWtjAvQdVcPN3n4g6SESrujMo8P7wUhYojKoNR+okcDNZCn+6AwvuJIc
	t9D1c4SXoSCVT/ya+db3FXIA1ZNNv8nFa7fATAmXFBhzyemjM5xkgcp3db/IZb+GmZfwGDkyngr
	KNQx+8IefbsS/UdTGehplgvWbyO4n/xm0wpKXRQWEbxIr6HB50TAg4c59a9JEElmAEE6eSkTxOR
	TQ42r22Aub/UIFi0MnSio+n3Yy2qtcXJ8w9GVtQxPuflpc2lowv5AJqvfoAkBlRfNSxPVHCZhhY
	/qAteGKp6x1y53xNtM1ZWIMCrt1+fmIhPq847yq+tTySLDXg1McLQxMnOSxbNvXnzywSG3dY6d0
	V11CbD9SvEDNI510IKXYDFfVyAi5MEOoV5Jb6MpTelsmuPkCfuc5WQeo2yU18XEnEuTAQpSp+3B
	bR1Cw=
X-Received: by 2002:a05:620a:6910:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb8cabef31mr1935602785a.7.1772116663424;
        Thu, 26 Feb 2026 06:37:43 -0800 (PST)
X-Received: by 2002:a05:620a:6910:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb8cabef31mr1935598685a.7.1772116662812;
        Thu, 26 Feb 2026 06:37:42 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm509000a12.17.2026.02.26.06.37.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 06:37:42 -0800 (PST)
Message-ID: <77f52ff4-4b6c-4f50-bcb0-51b89e67d0ab@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 15:37:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: lemans-ride: Enable mdss1
 display Port
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        dmitry.baryshkov@oss.qualcomm.com, marijn.suijten@somainline.org,
        swboyd@chromium.org, mripard@kernel.org, abel.vesa@linaro.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, abhinav.kumar@linux.dev,
        sean@poorly.run, airlied@gmail.com, simona@ffwll.ch,
        alex.vinarskis@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com
References: <20260226111322.250176-1-quic_mkuntuma@quicinc.com>
 <20260226111322.250176-3-quic_mkuntuma@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260226111322.250176-3-quic_mkuntuma@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 038-AqMHAcrSU3gJi1Oawqf44jqZUAqp
X-Proofpoint-GUID: 038-AqMHAcrSU3gJi1Oawqf44jqZUAqp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDEzMSBTYWx0ZWRfX3TM4Xz+NDZCP
 0CvTzXzgTj3iQtG7ndh6lO8//R7s98mcGtFyWEaOUzWw+c2Lwek1tlgsdZs8gJWXpUclKJUxzrG
 m8PohwSCFFplsKLP+1UuTrhSWYi875ITb+aPSZVkzTnYMP8I4vEIhUbmKvu6RoajP36hzGm5Np8
 s227BERVxpoPt1wiTvtjQl+/TrQWx+3Pv24qMU5ZAV3xW9HadEG65cT82gFjWjZEy87E979p3cL
 HG0YeNXetHkiDMSYrrYJgCUVIShKUPzzTImOW1NUiM5bDPVTp1dDSYxcVUulsLOpI9wJNJmd2Wp
 L+4ecTyvoq5SCgxxKRfmsL21tvWrxKvWbydRD1B+DSHCDqkHwphZM5kAmU+3Zns3tuWNe/HJcES
 RKEavP3ZA+j9TgXgxEcHzEBwcL/kC/M7ElxfIF5CV0QPy0FWrdj2JQKEoXeGHZFR4FETOD0KrWo
 z7DopLwRFaskSc3i9sw==
X-Authority-Analysis: v=2.4 cv=TcybdBQh c=1 sm=1 tr=0 ts=69a05ab8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=XQLX8yjaJUNYVVxXu1AA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260131
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268888-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,quicinc.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[quicinc.com,oss.qualcomm.com,somainline.org,chromium.org,kernel.org,linaro.org,linux.dev,poorly.run,gmail.com,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 651391A7D2F
X-Rspamd-Action: no action

On 2/26/26 12:13 PM, Mani Chandana Ballary Kuntumalla wrote:
> This change enables DP controllers, DPTX0 and DPTX1 alongside
> their corresponding PHYs of mdss1 which corresponds to edp2
> and edp3.
> 
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---

Please switch to using b4, you omitted including a tag you received

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

